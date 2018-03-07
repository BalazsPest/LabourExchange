package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.CompanyService;
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

    @GetMapping(value = "/companyIndex")
    public String getCompanyIndex(Model model) {
        List<Advertisement> adverts =advertisementService.getAdvertsByStatus(Status.ACTIVE);
        model.addAttribute("advertisement", adverts);
        return "companyIndex";
    }

    @GetMapping(value = "/nextCompanyRegistration")
    public String getCompanyPackages(Model model){
        return "nextCompanyRegistration";
    }
}
