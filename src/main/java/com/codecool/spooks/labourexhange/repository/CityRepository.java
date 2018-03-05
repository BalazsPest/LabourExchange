package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.users.City;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CityRepository extends JpaRepository<City, Long> {
    City findByName (String name);
}
