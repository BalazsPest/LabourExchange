package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdvertisementRepository extends JpaRepository<Advertisement, Long>{
    List<Advertisement> findByStatus (Status status);
    List<Advertisement> findByStudentId (int id);
}
