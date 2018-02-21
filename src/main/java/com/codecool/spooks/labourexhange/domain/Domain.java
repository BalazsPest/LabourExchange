package com.codecool.spooks.labourexhange.domain;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.User;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.ModelSetUpService;
import com.codecool.spooks.labourexhange.service.UserService;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class Domain {

    //private static DBController thisController = new DBController();
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
    EntityManager em = emf.createEntityManager();
    private ModelSetUpService setUp = new ModelSetUpService(em);

    private AdvertisementService advService;
    private UserService usrService;

    public Domain(AdvertisementService advService, UserService usrService) {
        this.usrService = usrService;
        this.advService = advService;

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

    //i think it will be unnecessary or not here
    public List<City> getCityNames() {
        System.out.println("cities");
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
        return null;
    }

    public List<Field> getFields() {
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


}
