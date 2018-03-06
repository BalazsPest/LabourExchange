package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;

import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;
import com.codecool.spooks.labourexhange.repository.AdvertisementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import java.util.List;
import java.util.Date;


@Service
public class AdvertisementService {

    @Autowired
    AdvertisementRepository advertisementRepository;


    public Advertisement addNewAdvert(Student studentOfAdv, Field fieldOfAdv, String title, String description, Date date, int weeklyCapacity, int requestedMoney, City cityOfAdv, List<Tag> tags) {
        Advertisement newAdvertisement = new Advertisement(studentOfAdv, Status.ACTIVE, fieldOfAdv, title, description, date, weeklyCapacity, requestedMoney, cityOfAdv, tags);
        return advertisementRepository.save(newAdvertisement);
    }


    public List<Advertisement> getAdvertsByStatus(Status status) {
        return advertisementRepository.findByStatus(status);
    }


    public List<Advertisement> getAdvertsFromStudent(Integer id) {
        System.out.println("belép");
        return advertisementRepository.findByStudentId(id);
    }


    public List<Advertisement> getAdvertsWithCity(EntityManager em,Integer id) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);
        Join<Advertisement, City> join = from.join("cityOfWorking");
        ParameterExpression<Integer> parameter = criteriaBuilder.parameter(Integer.class);
        criteria.select(from).where(criteriaBuilder.equal(join.get("id"), parameter)); // ha joinolt bálának az id-ját akarod berakni akkor nem működik,az csak egy kapocs

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, id);

        return newQuery.getResultList();
    }
}
