package com.ddavey.myui.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/interface")
public class InterfaceController
{
    @RequestMapping(method = RequestMethod.POST)
    public String getInterfaceDetailsPage()
    {
        return "interface";
    }
}
