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

//@Component
public class InitializerBean {


    public InitializerBean(LanguageService languageService, CityService cityService, FieldService fieldService,
                           AdvertisementService advertisementService, StudentService studentService, CompanyService companyService,
                           TagService tagService) {


        //Adding languages
        //languageService.addNewLanguage("german", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("german", Language.LanguageLevel.INTERMEDIATE);
        //languageService.addNewLanguage("german", Language.LanguageLevel.HIGH);
        languageService.addNewLanguage("english", Language.LanguageLevel.INTERMEDIATE);
        //languageService.addNewLanguage("english", Language.LanguageLevel.HIGH);
        //languageService.addNewLanguage("english", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("spanish", Language.LanguageLevel.INTERMEDIATE);
        //languageService.addNewLanguage("spanish", Language.LanguageLevel.HIGH);
        //languageService.addNewLanguage("spanish", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("russian", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("polish", Language.LanguageLevel.BASIC);
        languageService.addNewLanguage("italian", Language.LanguageLevel.BASIC);
        //languageService.addNewLanguage("chinese", Language.LanguageLevel.INTERMEDIATE);
        languageService.addNewLanguage("chinese", Language.LanguageLevel.BASIC);
        //Adding cities

        cityService.addNewCity("Miskolc");
        cityService.addNewCity("Pécs");
        cityService.addNewCity("Nyíregyháza");
        cityService.addNewCity("Szeged");
        cityService.addNewCity("Budapest");
        cityService.addNewCity("Debrecen");
        cityService.addNewCity("Veszprém");
        cityService.addNewCity("Szolnok");
        cityService.addNewCity("Kecskemét");
        cityService.addNewCity("Győr");
        cityService.addNewCity("Szentes");
        cityService.addNewCity("Székesfehérvár");
        cityService.addNewCity("Szombathely");
        cityService.addNewCity("Békéscsaba");
        cityService.addNewCity("Kaposvár");
        cityService.addNewCity("Mohács");
        cityService.addNewCity("Baja");
        cityService.addNewCity("Salgótarján");

        //Adding students
        studentService.addStudent("Molnár Árpád", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE,
                                  "2000.02.25.", cityService.getCityByName("Budapest"), Arrays.asList(languageService.getLanguageByName("english")));
        //Adding companies
         companyService.addCompany("procter", "procter@gmail.com", "proki", "proki");
        //Adding fields
        fieldService.addField("Catering");
        fieldService.addField("Housekeeping");
        fieldService.addField("Computers and Technology");
        fieldService.addField("Ecology-related");
        fieldService.addField("Education and Social Services");
        fieldService.addField("Arts");
        fieldService.addField("Communications");
        fieldService.addField("Trades and Transportation");
        fieldService.addField("Finance");
        fieldService.addField("Business");
        fieldService.addField("Architecture");
        fieldService.addField("Engineering");
        fieldService.addField("Science");
        fieldService.addField("Tourism");
        fieldService.addField("Law");

        //Adding tags
        tagService.addTag("waitressing", fieldService.getFieldByName("Catering"));
        tagService.addTag("cooking", fieldService.getFieldByName("Catering"));

        //Adding new advertisement
        advertisementService.addNewAdvert(studentService.getStudentByUsername("Molnár Árpád"), fieldService.getFieldByName("catering"), "Cheap diswashing", "I do everything", new Date(),
                3, 500, cityService.getCityByName("Budapest"), Arrays.asList(tagService.getTagByName("waitressing"), tagService.getTagByName("cooking")));

      
    }
}
