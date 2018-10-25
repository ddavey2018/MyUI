package com.ddavey.myui.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController
{
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getHomePage()
    {
        return "index";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String post()
    {
        return "index";
    }
}
