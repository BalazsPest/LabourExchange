package com.codecool.spooks.labourexhange.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class StaticController{


    @GetMapping(value = "/index")
    public String getIndex(){
        return "index";
    }
}