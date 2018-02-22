package com.codecool.spooks.labourexhange.domain;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;
import com.codecool.spooks.labourexhange.service.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Domain {

    //private static DBController thisController = new DBController();
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
    EntityManager em = emf.createEntityManager();
    private ModelSetUpService setUp = new ModelSetUpService(em);

    private AdvertisementService advService;
    private UserService usrService;
    private FieldService fieldService;
    private CityService cityService;
    private LanguageService lngService;

    public Domain(AdvertisementService advService, UserService usrService, FieldService fieldService, CityService cityService, LanguageService lngService) {
        this.usrService = usrService;
        this.advService = advService;
        this.fieldService = fieldService;
        this.cityService = cityService;
        this.lngService = lngService;
    }

    //better name listAllAdvertsForCompanies
    public List<Advertisement> getAdverts() {

        System.out.println("adverts");
        return null;
    }

    //listAllAdvertsInONeCity
    public List<Advertisement> getAdvertsWithCities(String city) {
        System.out.println("advwithcity");
        return null;
    }

    //WRONG NAME -------------------------------
    public List<City> getCityNames() {
        List <City> cities = cityService.getCities(em);
        if (cities != null) {
            System.out.println(cities.toString());
            return cities;
        }
        return null;
    }
    // i think it will be unnecessary or not here
    public City cityById(int id) {
        System.out.println("citybyid");
        return null;
    }
    // i think it will be unnecessary or not here
    public List<Advertisement> getAdvertisementBy(City city) {
        System.out.println("");
        return null;
    }

    public List<Language> getLanguages() {
        List <Language> languages = lngService.getLanguages(em);
        if (languages != null) {
            System.out.println(languages.toString());
            return languages;
        }
        return null;
    }

    public List<Field> getFields() {
        List <Field> fields = fieldService.getFields(em);
        if (fields != null) {
            System.out.println(fields.toString());
            return fields;
        }
        return null;
    }





    public boolean registrateTheUser(String userName, String name, String eMailAddress, String password) {
        if(!usrService.checkUsers(userName, em)) {
            usrService.addUser(userName, name, eMailAddress, password, em);
            return true;
        }
        return false;
    }


    public int authenticateUserAndIfSuccessGetUserId(String password, String eMailAddress) {
        User user = usrService.getUserIfPasswordAndMailIsForSameUser(password, eMailAddress, em);
        if (user != null) {
            int id = user.getId();
            return id;
        }
        return 0;
    }

    public boolean createNewAdvertisement(int id, String title, String description, String fieldName, String cityName, int weeklyCapacity, int requestedMoney) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        List<Tag> tags = new ArrayList<>();

        Field fieldOfAdv = fieldService.findField(fieldName, em);
        City cityOfAdv = cityService.findCity(cityName, em);
        Student studentOfAdv = usrService.findStudent(id, em);

        if (fieldOfAdv != null && cityOfAdv != null && studentOfAdv != null) {
            try {
                Advertisement newAdvert = advService.addNewAdvert(studentOfAdv, fieldOfAdv, title, description, date, weeklyCapacity, requestedMoney, cityOfAdv, tags, em);
            } catch (NullPointerException e) {
                System.out.println("cant make advert");
                return false;
            }
        }
        return true;
    }
}
