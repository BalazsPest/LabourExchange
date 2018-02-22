package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;
import spark.Request;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import java.util.Date;
import java.util.List;


public class AdvertisementService {

    public Advertisement addNewAdvert(Student studentOfAdv, Field fieldOfAdv, String title, String description, Date date, int weeklyCapacity, int requestedMoney, City cityOfAdv, List<Tag> tags, EntityManager em) {
        Advertisement newAdvertisement = new Advertisement(studentOfAdv, Status.ACTIVE, fieldOfAdv, title, description, date, weeklyCapacity, requestedMoney, cityOfAdv, tags);
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        em.persist(newAdvertisement);
        trans.commit();
        System.out.println(newAdvertisement);
        return newAdvertisement;
    }



}
