package com.codecool.spooks.labourexhange.controller;


import com.codecool.spooks.labourexhange.model.users.Company;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.UserRole;
import com.codecool.spooks.labourexhange.service.CompanyService;
import com.codecool.spooks.labourexhange.service.StudentService;
import com.codecool.spooks.labourexhange.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {


    @Autowired
    CompanyService companyService;

    @Autowired
    StudentService studentService;

    @Autowired
    UserService userService;



    @GetMapping(value = "/registration")
    public String getRegistrationPage() { return "oldRegistration"; }

    @GetMapping(value = "/login")
    public String getLoginPage() {
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return "index";
    }

    @PostMapping("/authenticateuser")
    public String authenticateUser(@RequestParam("eMailAddress") String email,
                                   @RequestParam("password") String password,
                                   Model model, HttpSession session) {
        if (userService.getUserRoleToLogin(email, password) == null) {
            model.addAttribute("msg", "Wrong email or password");
            return "login";
        } else {
            if (userService.getUserRoleToLogin(email, password) == UserRole.STUDENT) {
                session.setAttribute("user",userService.getLoginUser(Student.class, email));
                return "studentIndex";
            } else if (userService.getUserRoleToLogin(email, password) == UserRole.COMPANY) {
                session.setAttribute("user",userService.getLoginUser(Company.class, email));
                return "companyIndex";
            }
            return "index";
        }
    }

    @PostMapping(value = "/registrateuser")
    public String saveUser(@RequestParam("userName") String userName,
                           @RequestParam("name") String name,
                           @RequestParam("eMailAddress") String eMailAddress,
                           @RequestParam("password") String password,
                           @RequestParam("userRole") String role,
                           Model model) {


        Map<String,String> userInformations = new HashMap<>();
        userInformations.put("userName",userName);
        userInformations.put("name",name);
        userInformations.put("emailAddress",eMailAddress);
        userInformations.put("password",password);
        userInformations.put("userRole",role);

        if(!userService.userAlreadyRegistrated(userInformations)){
            model.addAttribute("msg","User registration completed!");
            return "redirect:/login";
        }
        else {
            model.addAttribute("msg","Username or email address is already taken");
            return "oldRegistration";
        }
    }
}
