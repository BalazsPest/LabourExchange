package com.codecool.spooks.labourexhange.domain;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Company;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.review.Review;
import com.codecool.spooks.labourexhange.model.users.review.SatisfactionLevel;

import javax.persistence.*;
import javax.persistence.criteria.*;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class CriteriaController {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
    EntityManager em = emf.createEntityManager();

    //kell egy before és egy after a connection nyitás/zárásra
    // constructorban paraméterek emgadása,változók a methodokhoz
    //külön methodok,más-más db feladatokra
    //null-al egyenlővé teszed az objectet és idővel a garbage collector összeszedi


    public CriteriaController(){
    }



    public List<Object> filterBy(String filter){
        return null;
    }


    public List<Advertisement> getAdvertsWithField(Field field) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);
        Join<Advertisement, Field> join = from.join("fieldOfWork");
        ParameterExpression<Field> parameter = criteriaBuilder.parameter(Field.class);
        criteria.select(from).where(criteriaBuilder.equal(join.get("name"), parameter));

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, field);

        return newQuery.getResultList();
    }

    public List<Advertisement> getAdvertsWithCity(City city) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);
        Join<Advertisement, City> join = from.join("cityOfWorking");
        ParameterExpression<City> parameter = criteriaBuilder.parameter(City.class);
        criteria.select(from).where(criteriaBuilder.equal(join.get("name"), parameter));

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, city);

        return newQuery.getResultList();
    }

    public List<Advertisement> getAdvertsFromStudent(Student student) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> criteria = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> from = criteria.from(Advertisement.class);
        Join<Advertisement, Student> join = from.join("cityOfWorking");
        ParameterExpression<Student> parameter = criteriaBuilder.parameter(Student.class);
        criteria.select(from).where(criteriaBuilder.equal(join.get("name"), parameter));

        TypedQuery<Advertisement> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, student);

        return newQuery.getResultList();
    }



    //kell open-close method a connectionnek,egy enum a case-switch-nek

}
