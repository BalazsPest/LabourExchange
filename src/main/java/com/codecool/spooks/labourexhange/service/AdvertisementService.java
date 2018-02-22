package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.City;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import java.util.List;

public class AdvertisementService {
    private static AdvertisementService ourInstance = new AdvertisementService();

    public static AdvertisementService getInstance() {
        return ourInstance;
    }

    private AdvertisementService() {
    }

    public List<Advertisement> getAdvertWithStatus(EntityManager em, Status status) {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }

        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> query = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = query.from(Advertisement.class);
        ParameterExpression<Status> parameter = criteriaBuilder.parameter(Status.class);
        query.select(from).where(criteriaBuilder.equal(from.get("status"), parameter));

        TypedQuery<Advertisement> newQuery = em.createQuery(query);
        newQuery.setParameter(parameter, status);

        return newQuery.getResultList();

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

    public List<Advertisement> getAdvertsWithField(EntityManager em,String field) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);
        Join<Advertisement, Field> join = from.join("fieldOfWork");
        ParameterExpression<String> parameter = criteriaBuilder.parameter(String.class);
        criteria.select(from).where(criteriaBuilder.equal(join.get("name"), parameter));

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, field);

        return newQuery.getResultList();
    }

    public List<City> getAllCity(EntityManager em){
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<City> criteria = criteriaBuilder.createQuery(City.class);
        Root<City> from = criteria.from(City.class);
        criteria.select(from);

        TypedQuery<City> newQuery = em.createQuery(criteria);

        return newQuery.getResultList();
    }


    public List<Advertisement> filterAdvertsBy(EntityManager em,Object filter) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);

        switch (filter.getClass().getSimpleName()){
            case "City":
                Join<Advertisement, City> join = from.join("cityOfWorking");

        }

        ParameterExpression<Object> parameter = criteriaBuilder.parameter(Object.class);
        criteria.select(from).where(criteriaBuilder.equal(join.get("id"), parameter)); // ha joinolt bálának az id-ját akarod berakni akkor nem működik,az csak egy kapocs

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, filter);

        return newQuery.getResultList();
    }

    public List<Advertisement> getAdvertBetween(EntityManager em, Integer fromInt,Integer toInt) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);
        ParameterExpression<Integer> parameter = criteriaBuilder.parameter(Integer.class);
        ParameterExpression<Integer> parameter2 = criteriaBuilder.parameter(Integer.class);
        if(fromInt>100) {
            criteria.select(from).where(criteriaBuilder.between(from.get("requestedMoneyPerHour"), parameter, parameter2));
        }
        else{
            criteria.select(from).where(criteriaBuilder.between(from.get("weeklyCapacity"), parameter, parameter2));
        }

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, fromInt);
        newQuery.setParameter(parameter2, toInt);

        return newQuery.getResultList();
    }
}
