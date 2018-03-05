package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.swing.border.EmptyBorder;
import java.util.Date;
import java.util.List;

@Service
public class CityService {

    @Autowired
    CityRepository cityRepository;

    public City getCityByName(String name) {
        return cityRepository.findByName(name);
    }

    public List<City> getCities() {
        return cityRepository.findAll();
    }

    public void addNewCity(String name) {
        City newCity = new City(name) ;
        cityRepository.save(newCity);
    }

    public void saveCity(City city) {
        cityRepository.save(city);
    }




}
