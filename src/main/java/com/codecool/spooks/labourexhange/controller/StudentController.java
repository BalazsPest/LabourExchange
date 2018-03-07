package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.LanguageService;
import com.codecool.spooks.labourexhange.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    AdvertisementService advertisementService;
    @Autowired
    LanguageService languageService;


    @GetMapping("/studentIndex")
    public String getStudentIndex(Model model) {
        //Integer id = Integer.parseInt(req.session().attribute("userId"));
        Integer id = 1;
        List<Advertisement> adverts =advertisementService.getAdvertsFromStudent(id);
        model.addAttribute("advertisement", adverts);
        return "studentIndex";
    }

    @GetMapping("/studentProfile")
    public String getStudentProfile(Model model){
        List<Language> languages = languageService.getLanguages();
        List<Student.Gender> genders = studentService.getAllGenders();
        model.addAttribute("languages",languages);
        model.addAttribute("genders", genders);
        return "studentProfile";
    }
    /*@PostMapping("/editstudent-profile")
    public String editandSaveStudentProfile()@RequestParam{

    }*/

}
