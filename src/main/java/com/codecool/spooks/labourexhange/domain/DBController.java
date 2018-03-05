package com.codecool.spooks.labourexhange.domain;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.*;


import javax.persistence.*;
import javax.persistence.criteria.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class DBController {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
    EntityManager em = emf.createEntityManager();

    public DBController() {
        //this.populateDb();
    }

/*
    public void populateDb() {

        Language ger = new Language("german", Language.LanguageLevel.BASIC);
        Language eng = new Language("english", Language.LanguageLevel.HIGH);

        City Bp = new City("Budapest");
        City Ms = new City("Miskolc");
        Student stud1 = new Student("Molnár Árpád", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE, "2000.02.25.", Bp, Arrays.asList(ger, eng));
        Student stud2 = new Student("Kiss Béla", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE, "2000.02.25.", Bp, Arrays.asList(ger, eng));
        Student stud3 = new Student("Velencze Gáspár", "arpi@haho.hu", "arpi", "haha", Student.Gender.MALE, "2000.02.25.", Bp, Arrays.asList(ger, eng));

        Company comp1 = new Company("procter", "procter@gmail.com", "proki", "proki");

        Field catering = new Field("catering");
        Tag waitr = new Tag("waitressing", catering);
        Tag cook = new Tag("cooking", catering);

        Advertisement adv = new Advertisement(stud1, Status.ACTIVE, catering, "Cheap dishwashing", "Im a 24 years old man, and i have a lot of feedback about my work. You can check on my profile.", new Date(), 3, 500, Bp, Arrays.asList(cook, waitr));
        Advertisement adv2 = new Advertisement(stud2, Status.ACTIVE, catering, "Dishwashing", "I almost do nothing", new Date(), 10, 700, Ms, Arrays.asList(cook));
        Advertisement adv3 = new Advertisement(stud3, Status.ACTIVE, catering, "Chef", "I been working as a chef for 4 years now. I have a lot of experience.", new Date(), 10, 700, Ms, Arrays.asList(cook));


        Review rev1 = new Review("you are not so funny", comp1, stud1, SatisfactionLevel.FIVE);

        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        em.persist(Bp);
        em.persist(Ms);
        em.persist(stud1);
        em.persist(stud2);
        em.persist(stud3);
        em.persist(comp1);
        em.persist(ger);
        em.persist(eng);
        em.persist(catering);
        em.persist(waitr);
        em.persist(cook);
        em.persist(adv);
        em.persist(adv2);
        em.persist(rev1);
        em.persist(adv3);
        trans.commit();
    }
*/

    /*public List<Advertisement> getAdvertsWithCities() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<Advertisement> advWithCity = em.createNamedQuery("selectAdvertWithCity", Advertisement.class).getResultList();
        return advWithCity;
    }*/

    /*
    public List<Advertisement> getAdverts() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<Advertisement> advWithCity = em.createNamedQuery("selectAllAdvert", Advertisement.class).getResultList();
        return advWithCity;
    }


     public List<Advertisement> getAdvertsWithCities(String city) {

        EntityTransaction trans = em.getTransaction();
        City thisCity = em.createNamedQuery("getCityByName", City.class).setParameter("name", city).getSingleResult();
        System.out.println(thisCity);
        if (!trans.isActive()) {
            trans.begin();
        }

        List<Advertisement> advWithCity = em.createNamedQuery("getCityByName", Advertisement.class).setParameter("name", thisCity).getResultList();
        return advWithCity;
    }


    public List<Advertisement> getAdvertWithField() {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);
        Join<Advertisement, City> join = from.join("fieldOfWork");// joinolni a base változója alapján  ,case-switch-el dinamikussá tehető
        ParameterExpression<String> parameter = criteriaBuilder.parameter(String.class);//
        criteria.select(from).where(criteriaBuilder.equal(join.get("name"), parameter)); // joinolt táblából kell kieszedegetni a cuccokat

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, "catering");//

        return newQuery.getResultList();
    }


    public List<City> getCityNames() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<City> getCities = em.createNamedQuery("selectCities", City.class).getResultList();
        return getCities;

    }

    public City cityById(int id) {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        City city = em.createNamedQuery("getCityById", City.class).setParameter("id", id).getSingleResult();

        return city;
    }

    public List<Advertisement> getAdvertisementBy(City city) {
        System.out.println("getId: " + city.getId());
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<Advertisement> advertisementList = em.createNamedQuery("selectAdvByCity", Advertisement.class).setParameter("id", city.getId()).getResultList();
        return advertisementList;
    }

    public List<Language> getLanguages() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<Language> languageList = em.createNamedQuery("getLanguages", Language.class).getResultList();
        return languageList;
    }

    public List<Field> getFields() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<Field> fieldList = em.createNamedQuery("getFields", Field.class).getResultList();
        return fieldList;
    }

    public List<Student> getStudents() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        List<Student> studentList = em.createNamedQuery("getStudents", Student.class).getResultList();
        return studentList;
    }



    public boolean addUser(Request req) {
        String userName = req.queryParams("userName");
        if (checkUsers(userName)) {
            System.out.println("wrong username");
            return false;
        }
        String name = req.queryParams("name");
        String eMailAddress = req.queryParams("eMailAddress");
        String password = req.queryParams("password");
        User newStudent = new Student(name, userName, eMailAddress, password);
        EntityTransaction et = em.getTransaction();
        et.begin();
        em.persist(newStudent);
        et.commit();
        System.out.println("okay");
        return true;
    }

    public boolean checkUsers(String userName) {
        try {
            System.out.println(userName);
            em.createNamedQuery("findUser", User.class).setParameter("userName", userName).getSingleResult();
            return true;
        } catch (NoResultException e) {
            System.out.println("wrooooooooong");
            return false;
        }
    }




}
*/
}

