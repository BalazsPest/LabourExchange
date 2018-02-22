package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.City;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.swing.border.EmptyBorder;
import java.util.List;

public class CityService {


    public City findCity(String name, EntityManager em) {
        try {
            City city = em.createNamedQuery("getCityByName", City.class).setParameter("name", name).getSingleResult();
            return city;
        } catch (NoResultException e) {
            System.out.println(" E R R O R");
        }
        return null;
    }

    public List<City> getCities(EntityManager em) {
        try {
            List<City> cities = em.createNamedQuery("selectCities", City.class).getResultList();
            return cities;
        } catch (NoResultException e) {
            return null;
        }
    }
}
