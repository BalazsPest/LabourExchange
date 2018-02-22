package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;


import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import java.util.List;

public class UserService {


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




    public void addUser(String userName, String name, String eMailAddress, String password, EntityManager em) {
        User someone = new Student(name, eMailAddress, userName, password);


        EntityTransaction et = em.getTransaction();
        if (!et.isActive()) {
            et.begin();
        }
        //et.begin();
        em.persist(someone);
        et.commit();
        System.out.println("okay");
    }

    public boolean checkUsers(String userName, EntityManager em) {
        try {
            em.createNamedQuery("findUser", User.class).setParameter("userName", userName).getSingleResult();
            return true;
        } catch (NoResultException e) {
            System.out.println("wrooooooooong");
            return false;
        }
    }

    public User getUserIfPasswordAndMailIsForSameUser(String password, String eMailAddress, EntityManager em) {
        try {
            User user = em.createNamedQuery("checkUserPassword", User.class).
                    setParameter("eMailAddress", eMailAddress).getSingleResult();
            if (user.getPassword().equals(password)) {
                return user;
            }
        } catch (NoResultException e) {
            System.out.println("There is no user registrated with that password");
        }
        return null;
    }

    public Student findStudent(int id, EntityManager em) {
        try {
            Student student = em.createNamedQuery("getStudentById", Student.class).setParameter("id", id).getSingleResult();
            return student;
        } catch (NoResultException e) {
            System.out.println(" E R R O R");
        }
        return null;
    }
}
