package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.service.CompanyService;
import com.codecool.spooks.labourexhange.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegistrationController {

    @Autowired
    CompanyService companyService;

    @Autowired
    StudentService studentService;



    @GetMapping(value = "/registration")
    public String getRegistrationPage() { return "/registration_login/oldRegistration"; }


    @PostMapping(value = "/registrateuser")
    public String saveUser(@RequestParam("userName") String userName,
                           @RequestParam("name") String name,
                           @RequestParam("eMailAddress") String eMailAddress,
                           @RequestParam("password") String password,
                           @RequestParam("userRole") String role,
                           Model model) {

        //todo userRole-t küldjük tovább valahogy, valami ilyesmi lesz (update: sztem nem kell)
        /*if (userRole == STUDENT) {
            studentService.checkStudent(userName, eMailAddress);
        } else if (userRole == COMPANY) {
            companyService.checkCompany(userName, eMailAddress);*/
        System.out.println(role);
        if (role.equals("Student")) {
            System.out.println(role);
            if (!studentService.checkStudent(userName, eMailAddress)) {
                studentService.addStudentForRegistration(userName, eMailAddress, name, password);
                return "redirect:/registration_login/login";

            } else {
                System.out.println(role);
                model.addAttribute("notManagedToRegistrate", true);
                return "/registration_login/oldRegistration";
            }

        } else {

            if (!companyService.checkCompany(userName, eMailAddress)) {
                System.out.println("not already used");
                companyService.addCompany(userName, eMailAddress, name, password);
                return "/company/nextCompanyRegistration";

            } else {
                System.out.println("nono");
                model.addAttribute("notManagedToRegistrate", true);
                return "/registration_login/oldRegistration";
            }
        }
    }
}