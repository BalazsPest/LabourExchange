package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.repository.CityRepository;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Date;

@Component
public class InitializerBean {


    public InitializerBean(LanguageService languageService, CityService cityService, FieldService fieldService,
                           AdvertisementService advertisementService, StudentService studentService, CompanyService companyService,
                           TagService tagService) {


        languageService.addNewLanguage("german", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("english", Language.LanguageLevel.HIGH);

        //cityService.addNewCity("Budapest");
        cityService.addNewCity("Miskolc");
        cityService.addNewCity("Pécs");
        cityService.addNewCity("Nyíregyháza");
        cityService.addNewCity("Szeged");

        City bp = new City("Budapest");
        //cityService.saveCity(bp);
        //cityService.getCityByName("Budapest")
        //studentService.addStudent("Molnár Árpád", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE, "2000.02.25.", Budapest, Arrays.asList(languageService.getLanguageByName("english"), languageService.getLanguageByName("german")));
        /*Student stud1 = new Student("Molnár Árpád", "arpi@haho.hu", "arpi",
                                "haha", Student.Gender.MALE, "2000.02.25.", bp,
                                Arrays.asList(languageService.getLanguageByName("english"),
                                languageService.getLanguageByName("german")));*/
        studentService.addStudent("Molnár Árpád", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE, "2000.02.25.", bp, Arrays.asList(languageService.getLanguageByName("english")));
        //studentService.saveStudent(stud1);
        companyService.addCompany("procter", "procter@gmail.com", "proki", "proki");



        Field catering = new Field("catering");
        fieldService.saveField(catering);
        fieldService.addField("housekeeping");
        fieldService.addField("it-related");
        fieldService.addField("ecology-related");
        //fieldService.addField("catering");

        //tagService.addTag("waitressing", catering);
        tagService.addTag("waitressing",  fieldService.getFieldByName("catering"));
        //tagService.addTag("cooking", catering);
        tagService.addTag("cooking",  fieldService.getFieldByName("catering"));

        Tag waitressing = new Tag("waitressing", catering);
        //Tag waitressing = new Tag("waitressing",  fieldService.getFieldByName("catering"));
        Tag cooking = new Tag("cooking", catering);
        //Tag cooking = new Tag("cooking",  fieldService.getFieldByName("catering"));

        advertisementService.addNewAdvert(studentService.getStudentByUsername("Molnár Árpád"),  catering, "Cheap diswashing", "I do everything", new Date(), 3, 500, bp, Arrays.asList(tagService.getTagByName("waitressing"), tagService.getTagByName("cooking")));
        /*Tag waitr = new Tag("waitressing", catering);
        Tag cook = new Tag("cooking", catering);
        advertisementService.addNewAdvert(stud1, Status.ACTIVE, catering, "Cheap dishwashing", "I do everything", new Date(), 3, 500, Bp, Arrays.asList(cook, waitr))
        Advertisement adv = new Advertisement(stud1, Status.ACTIVE, catering, "Cheap dishwashing", "I do everything", new Date(), 3, 500, Bp, Arrays.asList(cook, waitr));
        Advertisement adv2 = new Advertisement(stud1, Status.ACTIVE, catering, "Dishwashing", "I almost do nothing", new Date(), 10, 700, Ms, Arrays.asList(cook));
        Review rev1 = new Review("you are not so funny", comp1, stud1, SatisfactionLevel.FIVE);*/
    }
}
