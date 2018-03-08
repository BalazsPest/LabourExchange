package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    AdvertisementService advertisementService;

    @GetMapping("/studentIndex")
    public String getStudentIndex(Model model, HttpSession session) {

        //Integer id = Integer.parseInt(req.session().attribute("userId"));
        Student student = (Student)session.getAttribute("user");
        int id= student.getId();
        List<Advertisement> adverts =advertisementService.getAdvertsFromStudent(id);
        model.addAttribute("advertisement", adverts);
        return "/student/studentIndex";
    }

    @GetMapping("/studentProfile")
    public String getStudentProfile(Model model){ return "/student/studentProfile";}


    @GetMapping("/studentReview")
    public String getStudentReviews(Model model) { return "/student/studentReview";}


    @GetMapping("/edit-advertisement")
    public String editAdvertisement (Model model) {


        //TODO edit advertisment - megcsináltam a root helyét (studentIndex.html) úgy kell
        //TODO behozni a form ot hogy már benne legyenek az előző kitöltött dolgok és azt Update eled
        //TODO ha editáltad POST al kell tovább küldeni

        return "/advertisement/advertisement";
    }

}
