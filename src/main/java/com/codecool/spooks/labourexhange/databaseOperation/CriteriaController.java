package com.codecool.spooks.labourexhange.databaseOperation;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.Status;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Student;
import org.junit.jupiter.api.BeforeEach;

import javax.persistence.*;
import javax.persistence.criteria.*;
import java.util.List;

public class CriteriaController {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("LabourExchange");
    EntityManager em = emf.createEntityManager();

    //kell egy before és egy after a connection nyitás/zárásra
    // constructorban paraméterek emgadása,változók a methodokhoz
    //külön methodok,más-más db feladatokra
    //null-al egyenlővé teszed az objectet és idővel a garbage collector összeszedi



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

    public List<Advertisement> getActiveAdvert() {
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }

        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<Advertisement> query = criteriaBuilder.createQuery(Advertisement.class);
        Root<Advertisement> adv = query.from(Advertisement.class);
        ParameterExpression<Status> parameter = criteriaBuilder.parameter(Status.class);
        query.select(adv).where(criteriaBuilder.equal(adv.get("status"), parameter));

        TypedQuery<Advertisement> newQuery = em.createQuery(query);
        newQuery.setParameter(parameter, Status.ACTIVE);

        return newQuery.getResultList();
    }



    //kell open-close method a connectionnek,egy enum a case-switch-nek

}
