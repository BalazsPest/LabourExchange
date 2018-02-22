package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import java.util.List;

public class UserService {

    private static UserService ourInstance = new UserService();

    public static UserService getInstance() {
        return ourInstance;
    }

    private UserService() {
    }


    public List<User> getUserById(EntityManager em, Integer id) {
        CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();

        CriteriaQuery<User> criteria = criteriaBuilder.createQuery(User.class);
        Root<User> from = criteria.from(User.class);
        ParameterExpression<Integer> parameter = criteriaBuilder.parameter(Integer.class);
        criteria.select(from).where(criteriaBuilder.equal(from.get("id"), parameter));

        TypedQuery<User> newQuery = em.createQuery(criteria);
        newQuery.setParameter(parameter, id);

        return newQuery.getResultList();
    }
}
