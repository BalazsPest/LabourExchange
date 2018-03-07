package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
   Student findById (Integer id);
   //Student findByUserNameAndEMailAddress(String userName, String eMailAddress);
   Student findByUserName(String userName);
   Student findByeMailAddress(String eMailAddress);
   List <Student.Gender> getAllByGender();

}
