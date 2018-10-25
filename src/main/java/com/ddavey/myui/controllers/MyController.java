package com.ddavey.myui.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController
{
    @RequestMapping(value = "/")
    public String getHomePage()
    {
        return "index";
    }
}
