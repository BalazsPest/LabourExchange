package com.codecool.spooks.labourexhange.service;


import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StudentService {

    @Autowired
    StudentRepository studentRepository;

    public Student getStudentById(Integer id) {
        return studentRepository.findById(id);
    }

    public void addStudent(String userName, String name, String eMailAddress, String password, Student.Gender gender, String birthdate, City city, List< Language > languages) {
        Student newStudent = new Student(name, eMailAddress, userName, password, gender, birthdate, city, languages);
        studentRepository.save(newStudent);
    }
     public void addStudent(String userName, String name, String eMailAddress, String password) {
         Student newStudent = new Student(name, eMailAddress, userName, password);
         studentRepository.save(newStudent);
     }

    public void saveStudent(Student student) {
        studentRepository.save(student);
    }


