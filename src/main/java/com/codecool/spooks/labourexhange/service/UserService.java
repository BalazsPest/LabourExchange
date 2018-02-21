package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;
import spark.Request;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import java.util.Arrays;

public class UserService {


    public void addUser(String userName, String name, String eMailAddress, String password, EntityManager em) {
        User someone = new Student(name, eMailAddress, userName, password);


        EntityTransaction et = em.getTransaction();
        et.begin();
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
}
