package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.users.Language;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Repository
public interface AdvertisementRepository extends JpaRepository<Advertisement, Long> {
    List<Advertisement> findByStatus(Status status);


    List<Advertisement> findByStudentId(int id);


    @Query(value = "Select a from Advertisement a " +
            "where (:cityName is null or a.cityOfWorking.name = :cityName) and" +
            "(:fieldName is null or a.fieldOfWork.name = :fieldName) and" +
            "(:money is null or :money < a.requestedMoneyPerHour)")
    List<Advertisement> findByFiltered(@Param("cityName") String cityName,
                                       @Param("fieldName") String fieldName,
                                       @Param("money") Integer money);
}

