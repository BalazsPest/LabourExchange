package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.service.*;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.CompanyService;
import com.codecool.spooks.labourexhange.service.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CompanyController {

    @Autowired
    CompanyService companyService;

    @Autowired
    AdvertisementService advertisementService;

    @Autowired
    CityService cityService;

    //@Autowired
    //LanguageService languageService;

    @Autowired
    FieldService fieldService;

    @Autowired
    StudentService studentService;


    @GetMapping(value = "/companyIndex")
    public String getCompanyIndex(Model model) {
        List<City> cities = cityService.getCities();
        //List<Language> languages = languageService.getLanguages();
        List<Advertisement> adverts =advertisementService.getAdvertsByStatus(Status.ACTIVE);

        List<Field> fields = fieldService.getFields();
        List<Student> students = studentService.getStudents();
        model.addAttribute("advertisement", adverts);
        model.addAttribute("cities", cities);
        //model.addAttribute("languages", languages);
        model.addAttribute("fields", fields);
        model.addAttribute("students", students);
        return "/company/companyIndex";

    }

    @GetMapping(value = "/filtered_advertisements")
    public String getFilteredAdverts(@ModelAttribute("city") String cityName,
                                    @ModelAttribute("field") String fieldName,
                                    @ModelAttribute("money") String moneyString,
                                     Model model) {
        cityName = (cityName.equals("all") ? null : cityName);

        fieldName = (fieldName.equals("all")) ? null : fieldName;


        Integer money= null;
        if (!moneyString.equals("")) {
             money = Integer.parseInt(moneyString);
        }

        /*int capacity = null;
        if (!capacityString.equals("")) {
            capacity = (int)Integer.parseInt(capacityString);
        }*/
        List<Advertisement> adverts = advertisementService.getAdvertsByCityFieldAndLanguage(cityName, fieldName, money);
        List<City> cities = cityService.getCities();
        List<Field> fields = fieldService.getFields();
        model.addAttribute("advertisement", adverts);
        model.addAttribute("cities", cities);
        model.addAttribute("fields", fields);

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

    @GetMapping("/allCompanies")
    public String getAllCompanies(Model model){
        model.addAttribute("companies", companyService.getAllCompanies());
        return "allCompanies";


    }







}
