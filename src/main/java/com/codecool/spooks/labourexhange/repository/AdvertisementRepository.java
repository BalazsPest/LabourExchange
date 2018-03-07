package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.users.Language;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdvertisementRepository extends JpaRepository<Advertisement, Long>{
    List<Advertisement> findByStatus (Status status);
    List<Advertisement> findByStudentId (int id);



    //(:paymentStatuses is null or ds.statusCode in :paymentStatuses)"
    //@NullMeans(IGNORED)
    //@Query("SELECT :parameterOne is null or parameter1 = :parameterOne) and (:parameterTwo is null or parameter2 = :parameterTwo)";
    @Query(value = "Select a from Advertisement a " +
            "where (:cityName is null or a.cityOfWorking.name = :cityName) and" +
            "(:fieldName is null or a.fieldOfWork.name = :fieldName) and" +
            "(:language is null or :language in a.student.languagesSpoken)")
    List<Advertisement> findBycityOfWorkingNameAndFieldOfWorkName(@Param("cityName") String cityName,
                                                                  @Param("fieldName") String fieldName,
                                                                  @Param("language") Language language);
}
