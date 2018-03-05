package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    AdvertisementService advertisementService;

    @GetMapping("/studentIndex")
    public String getStudentIndex(Model model) {
        //Integer id = Integer.parseInt(req.session().attribute("userId"));
        Integer id = 1;
        List<Advertisement> adverts =advertisementService.getAdvertsFromStudent(id);
        model.addAttribute("advertisement", adverts);
        return "studentIndex";
    }

}
