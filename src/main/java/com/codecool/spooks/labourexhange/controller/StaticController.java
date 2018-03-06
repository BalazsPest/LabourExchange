package com.codecool.spooks.labourexhange.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class StaticController{


    @GetMapping(value = "/index")
    public String getIndex(){
        return "index";
    }
}
