package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.service.CompanyService;
import com.codecool.spooks.labourexhange.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @Autowired
    CompanyService companyService;

    @Autowired
    StudentService studentService;

    @GetMapping(value = "/login")
    public String getLoginPage(Model model) {
        model.addAttribute("login", true);
        //params.put("studentId", req.session().attribute("userId"));
        return "/registration_login/login";
    }

    //get("/logout", controller::logout, new ThymeleafTemplateEngine());

    //post("/authenticateuser", controller::authenticateUserAfterLogin);
}
