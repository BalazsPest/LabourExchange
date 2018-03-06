package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.users.UserRole;
import com.codecool.spooks.labourexhange.repository.CompanyRepository;
import com.codecool.spooks.labourexhange.repository.StudentRepository;
import com.codecool.spooks.labourexhange.service.CompanyService;
import com.codecool.spooks.labourexhange.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static com.codecool.spooks.labourexhange.model.users.UserRole.COMPANY;
import static com.codecool.spooks.labourexhange.model.users.UserRole.STUDENT;

@Controller
public class RegistrationController {

    @Autowired
    CompanyService companyService;

    @Autowired
    StudentService studentService;

    @GetMapping(value = "/registration")
    public String getRegistrationPage() {
        return "registration";
    }


    @PostMapping(value = "/registrateuser")
    public String saveUser(@RequestParam("userName") String userName,
                           @RequestParam("name") String name,
                           @RequestParam("eMailAddress") String eMailAddress,
                           @RequestParam("password") String password,
                           Model model) {

        //todo userRole-t küldjük tovább valahogy, valami ilyesmi lesz
        /*if (userRole == STUDENT) {
            studentService.checkStudent(userName, eMailAddress);
        } else if (userRole == COMPANY) {
            companyService.checkCompany(userName, eMailAddress);*/

        /*if (!studentService.checkStudent(userName, eMailAddress)) {
            studentService.addStudent(userName, eMailAddress, name, password);
            return "redirect:/login";
        } else {
            model.addAttribute("notManagedToRegistrate", true);
            return "registration";
        }*/
        model.addAttribute("notManagedToRegistrate", true);
        return "registration";
    }
}