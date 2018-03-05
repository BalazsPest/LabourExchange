package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface AdvertisementRepository extends JpaRepository<Advertisement, Long>{
    List<Advertisement> findByStatus (Status status);
}
