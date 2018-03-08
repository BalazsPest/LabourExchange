package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class AdvertisementController {

    @Autowired
    AdvertisementService advertisementService;

    @Autowired
    CityService cityService;

    @Autowired
    LanguageService languageService;

    @Autowired
    FieldService fieldService;

    @Autowired
    CompanyService companyService;

    @Autowired
    StudentService studentService;

    @GetMapping(value = "/new-advertisement")
    public String makeNewAdvertisement(Model model){
        List <City> cities = cityService.getCities();
        List <Language> languages = languageService.getLanguages();
        List<Field> fields = fieldService.getFields();
        model.addAttribute("cities",cities);
        model.addAttribute("languages",languages);
        model.addAttribute("fields",fields);
        return "/advertisement/advertisement";
    }

    @PostMapping(value = "/make-advertisement")
    public String addAdvertisement(@RequestParam("title")String title,
                                   @RequestParam("description")String description,
                                   @RequestParam("field")String fieldName,
                                   @RequestParam("city")String cityName,
                                   @RequestParam("weeklyCapacity")int weeklyCapacity,
                                   @RequestParam("requestedMoney")int requestedMoney,
    HttpSession httpsession){
            // int id = Integer.parseInt(req.session().attribute("userId"));
        //Todo
        Student sessionuser = ((Student)httpsession.getAttribute("user"));
        Integer id = sessionuser.getId();
        String sessionUserName = sessionuser.getName();
        System.out.println(title + " " + description + " " + fieldName);
        Field fieldOfAdv = fieldService.getFieldByName(fieldName);
        City cityOfAdv = cityService.getCityByName(cityName);
        Student studentOfAdv = studentService.getStudentById(id);
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        //Todo
        List<Tag> tags = new ArrayList<>();

        if (fieldOfAdv != null && cityOfAdv != null && studentOfAdv != null) {
            try {
                Advertisement newAdvert = advertisementService.addNewAdvert(studentOfAdv, fieldOfAdv,
                                          title, description, date, weeklyCapacity, requestedMoney, cityOfAdv, tags);
                return "redirect:/studentIndex";
            } catch (NullPointerException e) {
                System.out.println("cant make advert");
                return "redirect:/404";
            }
        }
        return "redirect:/404";
    }

}
