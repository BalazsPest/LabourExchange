package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.CompanyService;
import com.codecool.spooks.labourexhange.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class CompanyController {

    @Autowired
    CompanyService companyService;

    @Autowired
    AdvertisementService advertisementService;

    @Autowired
    StudentService studentService;

    @GetMapping(value = "/companyIndex")
    public String getCompanyIndex(Model model) {
        List<Advertisement> adverts =advertisementService.getAdvertsByStatus(Status.ACTIVE);
        List<Student> students = studentService.getStudents();
        model.addAttribute("advertisement", adverts);
        model.addAttribute("students", students);
        return "/company/companyIndex";
    }

    @GetMapping(value = "/nextCompanyRegistration")
    public String getCompanyPackages(Model model){
        return "/company/nextCompanyRegistration";
    }

    @GetMapping(value = "/companyProfile")
    public String editCompanyProfile(Model model){ return "/company/companyProfile";}

    @GetMapping("/companyReview")
    public String getCompanyReviews(Model model) { return "/company/companyReview";}







}
