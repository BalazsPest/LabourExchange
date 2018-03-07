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


        //Adding languages
        languageService.addNewLanguage("german", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("english", Language.LanguageLevel.HIGH);
        //Adding cities

        cityService.addNewCity("Miskolc");
        cityService.addNewCity("Pécs");
        cityService.addNewCity("Nyíregyháza");
        cityService.addNewCity("Szeged");
        cityService.addNewCity("Budapest");

        //Adding students
        studentService.addStudent("Molnár Árpád", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE,
                                  "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        //Adding companies
         companyService.addCompany("procter", "procter@gmail.com", "proki", "proki");
        //Adding fields
        fieldService.addField("catering");
        fieldService.addField("housekeeping");
        fieldService.addField("it-related");
        fieldService.addField("ecology-related");

        //Adding tags
        tagService.addTag("waitressing", fieldService.getFieldByName("catering"));
        tagService.addTag("cooking", fieldService.getFieldByName("catering"));

        //Adding new advertisement
        advertisementService.addNewAdvert(studentService.getStudentByUsername("Molnár Árpád"), fieldService.getFieldByName("catering"), "Cheap diswashing", "I do everything", new Date(),
                3, 500, cityService.getCityByName("Budapest"), Arrays.asList(tagService.getTagByName("waitressing"), tagService.getTagByName("cooking")));

      
    }
}
