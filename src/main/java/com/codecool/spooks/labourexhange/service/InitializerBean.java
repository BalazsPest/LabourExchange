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
        languageService.addNewLanguage("spanish", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("romanian", Language.LanguageLevel.HIGH);
        languageService.addNewLanguage("italian", Language.LanguageLevel.BASIC);

        //Adding cities

        cityService.addNewCity("Miskolc");
        cityService.addNewCity("Pécs");
        cityService.addNewCity("Nyíregyháza");
        cityService.addNewCity("Szeged");
        cityService.addNewCity("Budapest");

        //Adding students
        studentService.addStudent("Molnár Árpád", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE,
                                  "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        studentService.addStudent("Kiss János", "janos@gmail.com", "arpi", "haha", Student.Gender.MALE,
                "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        studentService.addStudent("Horváth Ákos", "akos@gmail.com", "arpi", "haha", Student.Gender.MALE,
                "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        studentService.addStudent("Kiss Petra", "Petra@gmail.com", "arpi", "haha", Student.Gender.MALE,
                "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        studentService.addStudent("Ferenci Dániel", "dani@gmail.com", "arpi", "haha", Student.Gender.MALE,
                "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        studentService.addStudent("Zsellerecske Horváth Tamás", "tamás@gmail.com", "arpi", "haha", Student.Gender.MALE,
                "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        studentService.addStudent("Piros Léna", "lenapiros@gmail.com", "arpi", "haha", Student.Gender.MALE,
                "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        studentService.addStudent("Kiskőrösi Jázmin", "jazmin55@gmail.com", "arpi", "haha", Student.Gender.MALE,
                "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));





        //Adding companies
         companyService.addCompany("Procter", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("HBO", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("Concept EyeWear", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("YouTube", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("UPC", "procter@gmail.com", "proki", "proki");

        companyService.addCompany("Google", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("Amazon", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("Prezi.com", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("Apple", "procter@gmail.com", "proki", "proki");
        companyService.addCompany("General Electric", "procter@gmail.com", "proki", "proki");

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

        advertisementService.addNewAdvert(studentService.getStudentByUsername("Kiskőrösi Jázmin"), fieldService.getFieldByName("housekeeping"), "Nursing", "Im the best if you have a sick grandparent", new Date(),
                3, 500, cityService.getCityByName("Budapest"), Arrays.asList(tagService.getTagByName("nursing"), tagService.getTagByName("nursing")));

        advertisementService.addNewAdvert(studentService.getStudentByUsername("Zsellerecske Horváth Tamás"), fieldService.getFieldByName("it-related"), "Java Programmer", "Really good with the Java (un poco Python)", new Date(),
                3, 500, cityService.getCityByName("Budapest"), Arrays.asList(tagService.getTagByName("nursing"), tagService.getTagByName("nursing")));

        advertisementService.addNewAdvert(studentService.getStudentByUsername("Ferenci Dániel"), fieldService.getFieldByName("it-related"), "Frontend - developer", "Great frontend - bootstrap - html - thymeleaf", new Date(),
                3, 500, cityService.getCityByName("Budapest"), Arrays.asList(tagService.getTagByName("nursing"), tagService.getTagByName("nursing")));

    }
}
