package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
