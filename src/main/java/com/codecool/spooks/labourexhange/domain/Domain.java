package com.codecool.spooks.labourexhange.domain;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.*;
import com.codecool.spooks.labourexhange.model.users.review.Review;
import com.codecool.spooks.labourexhange.model.users.review.SatisfactionLevel;
import com.codecool.spooks.labourexhange.service.AdvertisementService;
import com.codecool.spooks.labourexhange.service.UserService;
import spark.Request;

import javax.persistence.*;
import javax.persistence.criteria.*;
import java.util.*;

public class Domain {

    public Domain(){
        populateDb();
    }

    private Map<String, Object> params = new HashMap<>();

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
    EntityManager em = emf.createEntityManager();

    AdvertisementService advertisementService = AdvertisementService.getInstance();

    UserService userService = UserService.getInstance();

    public Map<String, Object> getAdvertsWithStatus(Status status){
        List<Advertisement> adverts =advertisementService.getAdvertWithStatus(em,status);
        params.put("advertisement",adverts);
        return params;
    }

    public Map<String,Object> getAdvertsWithCity(Integer id) {
        List<Advertisement> adverts =advertisementService.getAdvertsWithCity(em,id);
        params.put("advertisement",adverts);
        return params;
    }


    public Map<String,Object> getAdvertsWithField(String field) {
        List<Advertisement> adverts =advertisementService.getAdvertsWithField(em,field);
        params.put("advertisement",adverts);
        return params;
    }

    public Map<String,Object> getAdvertBetween(Integer from,Integer to) {
        List<Advertisement> adverts =advertisementService.getAdvertBetween(em,from,to);
        params.put("advertisement",adverts);
        return params;
    }





    public Map<String,Object> getUserById(Integer id) {
        List<User> adverts = userService.getUserById(em,id);
        params.put("advertisement",adverts);
        return params;
    }


/*
    public Map<String,Object> getStudents() {
        List<Advertisement> adverts =advertisementService.getAll(em);
        params.put("advertisement",adverts);
        return params;
    }

    public Map<String,Object> getAdvertById() {
        List<Advertisement> adverts =advertisementService.getAdvertById(em,id);
        params.put("advertisement",adverts);
        return params;
    }



    public Map<String,Object> filterAdvertsBy(Object filter) {
        List<Advertisement> adverts =advertisementService.filterAdvertsBy(em,filter);
        params.put("advertisement",adverts);
        return params;
    }*/


    public void populateDb() {

        Language ger = new Language("german", Language.LanguageLevel.BASIC);
        Language eng = new Language("english", Language.LanguageLevel.HIGH);

        City Bp = new City("Budapest");
        City Ms = new City("Miskolc");
        Student stud1 = new Student("Molnár Árpád", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE, "2000.02.25.", Bp, Arrays.asList(ger, eng));
        Company comp1 = new Company("procter", "procter@gmail.com", "proki", "proki");

        Field catering = new Field("catering");
        Tag waitr = new Tag("waitressing", catering);
        Tag cook = new Tag("cooking", catering);

        Advertisement adv = new Advertisement(stud1, Status.ACTIVE, catering, "Cheap dishwashing", "I do everything", new Date(), 3, 500, Bp, Arrays.asList(cook, waitr));
        Advertisement adv2 = new Advertisement(stud1, Status.ACTIVE, catering, "Dishwashing", "I almost do nothing", new Date(), 10, 700, Ms, Arrays.asList(cook));
        Review rev1 = new Review("you are not so funny", comp1, stud1, SatisfactionLevel.FIVE);

        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        em.persist(Bp);
        em.persist(Ms);
        em.persist(stud1);
        em.persist(comp1);
        em.persist(ger);
        em.persist(eng);
        em.persist(catering);
        em.persist(waitr);
        em.persist(cook);
        em.persist(adv);
        em.persist(adv2);
        em.persist(rev1);
        trans.commit();
    }


}
