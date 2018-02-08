package com.codecool.spooks.labourexhange.databaseOperation;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.Status;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.adverts.category.Tag;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Company;
import com.codecool.spooks.labourexhange.users.Language;
import com.codecool.spooks.labourexhange.users.Student;
import com.codecool.spooks.labourexhange.users.review.Review;
import com.codecool.spooks.labourexhange.users.review.SatisfactionLevel;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class DBController {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
        EntityManager em = emf.createEntityManager();

    public DBController() {
        this.populateDb();
    }


    public void populateDb() {

        Language ger = new Language("german", Language.LanguageLevel.BASIC);
        Language eng = new Language("english", Language.LanguageLevel.HIGH);
        City Bp = new City("budapest");
        City Ms = new City("miskolc");
        Student stud1 = new Student("Molnár Árpád", "arpi@haho.hu", "arpi", Student.Gender.MALE, "2000.02.25.", Bp, Arrays.asList(ger, eng));
        Company comp1 = new Company("procter", "procter@gmail.com", "proki");
        Field catering = new Field("catering");
        Tag waitr = new Tag("waitressing", catering);
        Tag cook = new Tag("cooking", catering);

        Advertisement adv = new Advertisement(stud1, Status.ACTIVE, catering, "Cheap dishwashing", "I do everything", new Date(), 3, 500, Bp, Arrays.asList(cook, waitr));
        Advertisement adv2 = new Advertisement(stud1, Status.ACTIVE, catering, "dishwashing", "I almost do nothing", new Date(), 10, 700, Ms, Arrays.asList(cook));
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


    public List<Advertisement> getAllAdverts() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<Advertisement> adverts = em.createNamedQuery("selectAllAdvert", Advertisement.class).getResultList();
        for (Advertisement adve : adverts) {
            System.out.println(adve);
        }
        return adverts;
    }

    public List<Advertisement> getAdvertsWithCities(String city) {
        EntityTransaction trans = em.getTransaction();
        //long id = thisCity.getId();
        City thisCity = em.createNamedQuery("selectCities", City.class).setParameter("name", city).getSingleResult();
        System.out.println(thisCity);
        if (!trans.isActive()) {
            trans.begin();
        }
        //List<Advertisement> advWithCity = em.createNamedQuery("selectAdvertWhithCity", Advertisement.class).getResultList();
        List<Advertisement> advWithCity = em.createNamedQuery("selectAdvertWhithCity", Advertisement.class).setParameter("city", thisCity).getResultList();
        return advWithCity;
    }
}



