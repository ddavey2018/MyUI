package com.ddavey.myui.controllers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Store;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeRequestUrl;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeTokenRequest;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.gmail.GmailScopes;

@Controller
public class MyController
{

    private String clientId = "XXXXXX";
    private String clientSecret = "XXXXX";
    String url = new GoogleAuthorizationCodeRequestUrl(clientId, "http://localhost/code",
            Collections.singleton(GmailScopes.GMAIL_MODIFY)).setAccessType("offline").build();

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getHomePage(Model model)
    {

        model.addAttribute("gmailUrl", url);
        return "index";
    }

    @RequestMapping(value = "/indexGrids", method = RequestMethod.GET)
    public String getIndexGrids()
    {

        return "index-grids";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String getPage(@RequestParam String page)
    {
        return page;
    }

    @RequestMapping(value = "/code", method = RequestMethod.GET)
    public String getGmailToken(@RequestParam String code)
    {
        System.out.println(code);
        try
        {
            GoogleTokenResponse response = new GoogleAuthorizationCodeTokenRequest(new NetHttpTransport(),
                    new JacksonFactory(), clientId, clientSecret, code, "http://localhost/code").execute();

            Properties props = System.getProperties();
            props.setProperty("mail.store.protocol", "imap");
            props.put("mail.imap.ssl.enable", "true"); // required for Gmail
            props.put("mail.imap.auth.mechanisms", "XOAUTH2");
            Session session = Session.getInstance(props);
            Store store = session.getStore("imap");
            String accessToken = getAccessToken(clientId, clientSecret, response.getRefreshToken());
            store.connect("imap.gmail.com", 993, "scubied@googlemail.com", accessToken);
        }
        catch (IOException | MessagingException e)
        {
            e.printStackTrace();
        }
        return "index";
    }

    private String getAccessToken(String clientId, String secret, String refreshToken)
    {
        try
        {
            Map<String, Object> params = new LinkedHashMap<>();
            params.put("grant_type", "refresh_token");
            params.put("client_id", clientId);
            params.put("client_secret", secret);
            params.put("refresh_token", refreshToken);

            StringBuilder postData = new StringBuilder();
            for (Map.Entry<String, Object> param : params.entrySet())
            {
                if (postData.length() != 0)
                {
                    postData.append('&');
                }
                postData.append(URLEncoder.encode(param.getKey(), "UTF-8"));
                postData.append('=');
                postData.append(URLEncoder.encode(String.valueOf(param.getValue()), "UTF-8"));
            }
            byte[] postDataBytes = postData.toString().getBytes("UTF-8");

            URL url = new URL("https://www.googleapis.com/oauth2/v4/token");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setDoOutput(true);
            con.setUseCaches(false);
            con.setRequestMethod("POST");
            con.getOutputStream().write(postDataBytes);

            BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream()));
            StringBuffer buffer = new StringBuffer();
            for (String line = reader.readLine(); line != null; line = reader.readLine())
            {
                buffer.append(line);
            }

            JSONObject json = new JSONObject(buffer.toString());
            String accessToken = json.getString("access_token");
            return accessToken;
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        return null;
    }
}
