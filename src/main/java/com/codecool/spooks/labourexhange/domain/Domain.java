package com.codecool.spooks.labourexhange.domain;

import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.UserService;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;


import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.User;
import com.codecool.spooks.labourexhange.service.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class Domain {

    //private static DBController thisController = new DBController();
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
    EntityManager em = emf.createEntityManager();
    private ModelSetUpService setUp = new ModelSetUpService(em);

    private AdvertisementService advertisementService;
    private UserService userService;
    private FieldService fieldService;
    private CityService cityService;
    private LanguageService lngService;
    private Map<String, Object> container = new HashMap<>();

    public Domain(AdvertisementService advertisementService, UserService userService, FieldService fieldService, CityService cityService, LanguageService lngService) {
        this.userService = userService;
        this.advertisementService = advertisementService;
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
        List<Field> fields = fieldService.getFields(em);
        if (fields != null) {
            System.out.println(fields.toString());
            return fields;
        }
        return null;
    }




    public Map<String, Object> getAdvertsWithStatus(Status status){
        List<Advertisement> adverts = advertisementService.getAdvertWithStatus(em,status);
        container.put("advertisement",adverts);
        return container;
    }

    public Map<String,Object> getAdvertsWithCity(Integer id) {
        List<Advertisement> adverts =advertisementService.getAdvertsWithCity(em,id);
        container.put("advertisement",adverts);
        return container;
    }


    public Map<String,Object> getAdvertsWithField(String field) {
        List<Advertisement> adverts =advertisementService.getAdvertsWithField(em,field);
        container.put("advertisement",adverts);
        return container;
    }

    public Map<String,Object> getAdvertBetween(Integer from,Integer to) {
        List<Advertisement> adverts =advertisementService.getAdvertBetween(em,from,to);
        container.put("advertisement",adverts);
        return container;
    }





    public Map<String,Object> getUserById(Integer id) {
        List<User> adverts = userService.getUserById(em,id);
        container.put("advertisement",adverts);
        return container;
    }



    /*public Map<String,Object> getStudents() {
        List<Advertisement> adverts = advertisementService.getAll(em);
        container.put("advertisement",adverts);
        return container;
    }

    public Map<String,Object> getAdvertById(Integer id) {
        List<Advertisement> adverts =advertisementService.getAdvertById(em, id);
        container.put("advertisement",adverts);
        return container;
    }*/


    public boolean registrateTheUser(String userName, String name, String eMailAddress, String password) {
        if(!userService.checkUsers(userName, em)) {
            userService.addUser(userName, name, eMailAddress, password, em);
            return true;
        }
        return false;
    }


    public int authenticateUserAndIfSuccessGetUserId(String password, String eMailAddress) {
        User user = userService.getUserIfPasswordAndMailIsForSameUser(password, eMailAddress, em);
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
        Student studentOfAdv = userService.findStudent(id, em);

        if (fieldOfAdv != null && cityOfAdv != null && studentOfAdv != null) {
            try {
                Advertisement newAdvert = advertisementService.addNewAdvert(studentOfAdv, fieldOfAdv, title, description, date, weeklyCapacity, requestedMoney, cityOfAdv, tags, em);
            } catch (NullPointerException e) {
                System.out.println("cant make advert");
                return false;
            }
        }
        return true;
    }

    /*public Map<String,Object> filterAdvertsBy(Object filter) {
        List<Advertisement> adverts =advertisementService.filterAdvertsBy(em,filter);
        container.put("advertisement",adverts);
        return container;
    }*/
}
