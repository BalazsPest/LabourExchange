package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;

import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.repository.AdvertisementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Date;


@Service
public class AdvertisementService {

    @Autowired
    AdvertisementRepository advertisementRepository;


    public Advertisement addNewAdvert(Student studentOfAdv, Field fieldOfAdv, String title, String description, Date date, int weeklyCapacity, int requestedMoney, City cityOfAdv, List<Tag> tags) {
        Advertisement newAdvertisement = new Advertisement(studentOfAdv, Status.ACTIVE, fieldOfAdv, title, description, date, weeklyCapacity, requestedMoney, cityOfAdv, tags);
        return advertisementRepository.save(newAdvertisement);
    }


    public List<Advertisement> getAdvertsByStatus(Status status) {
        return advertisementRepository.findByStatus(status);
    }


    public List<Advertisement> getAdvertsFromStudent(Integer id) {
        System.out.println("belép");
        return advertisementRepository.findByStudentId(id);
    }

}
