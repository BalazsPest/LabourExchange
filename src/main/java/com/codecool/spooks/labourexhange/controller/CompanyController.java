package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.service.*;
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

    @Autowired
    LanguageService languageService;

    @Autowired
    FieldService fieldService;

    @GetMapping(value = "/companyIndex")
    public String getCompanyIndex(Model model) {
        List<City> cities = cityService.getCities();
        List<Language> languages = languageService.getLanguages();
        List<Advertisement> adverts =advertisementService.getAdvertsByStatus(Status.ACTIVE);
        List<Field> fields = fieldService.getFields();
        model.addAttribute("advertisement", adverts);
        model.addAttribute("cities", cities);
        model.addAttribute("languages", languages);
        model.addAttribute("fields", fields);

        return "companyIndex";
    }

    @GetMapping(value = "/filtered_advertisements")
    public String getFilteredAdverts(@ModelAttribute("city") String cityName,
                                    @ModelAttribute("field") String fieldName,
                                    @ModelAttribute("language") String languageName,
                                    @ModelAttribute("money") String moneyString, Model model) {
        System.out.println(cityName);
        System.out.println(fieldName);
        fieldName = null;
        Language language = null;
        if(!languageName.equals("null")) {
            language = languageService.getLanguageByName(languageName);
        }
        System.out.println(moneyString);
        System.out.println(languageName);
        List<Advertisement> adverts = advertisementService.getAdvertsByCityFieldAndLanguage(cityName, fieldName, language);

        /*if (!cityName.equals("null") && !fieldName.equals("null") &&
                !languageName.equals("null") && !moneyString.equals("null") ) {
            System.out.println("NOT NULL");
            //List<Advertisement> adverts = advertisementService.getAdvertsByCityFieldAndLanguage(cityName, fieldName);
        }*/
        model.addAttribute("advertisement", adverts);
        return "companyIndex";
    }

    @GetMapping(value = "/nextCompanyRegistration")
    public String getCompanyPackages(Model model){
        return "nextCompanyRegistration";
    }
}
