package com.codecool.spooks.labourexhange.service;


import com.codecool.spooks.labourexhange.model.users.Company;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.users.User;
import com.codecool.spooks.labourexhange.model.users.UserRole;
import com.codecool.spooks.labourexhange.repository.CompanyRepository;
import com.codecool.spooks.labourexhange.repository.StudentRepository;
import com.codecool.spooks.labourexhange.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class UserService {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    StudentRepository studentRepository;

    @Autowired
    CompanyRepository companyRepository;




    private boolean userInDB(String userName, String email) {
        return userRepository.findByUserName(userName) != null ||
                userRepository.findByEMailAddress(email) != null;
    }

    private void addUser(Map<String,String> userInfo){
        String hashedPswd = passwordEncoder.encode(userInfo.get("password"));

        if(userInfo.get("userRole").equals("Student")){
            Student student = new Student(userInfo.get("name"),userInfo.get("userName"),
                    userInfo.get("emailAddress"),hashedPswd);
            studentRepository.save(student);
        }
        else if(userInfo.get("userRole").equals("Company")){
            Company company = new Company(userInfo.get("name"),userInfo.get("userName"),
                    userInfo.get("emailAddress"),hashedPswd);
            companyRepository.save(company);
        }
    }

    public boolean userAlreadyRegistrated(Map<String,String> userInfo){
        if (userInDB(userInfo.get("userName"),userInfo.get("emailAddress"))){
            return true;
        }
        else{
            addUser(userInfo);
            return false;
        }
    }

    //Login

    public <T> T getLoginUser(Class<T> cls,String email){
        if(cls == Student.class){
            Student user = studentRepository.findByEMailAddress(email);
            return cls.cast(user);
        }
        else if(cls == Company.class){
            Company user = companyRepository.findByEMailAddress(email);
            return cls.cast(user);
        }
        else {
            return null;
        }

    }



    public UserRole getUserRoleToLogin(String email, String password){

        boolean userInDb = userInDB(null,email);
        if(!userInDb){
            return null;
        }
        else{
            User loginUser =userRepository.findByEMailAddress(email);
            if (!BCrypt.checkpw(password,loginUser.getPassword())){
                return null;
            }
            else{
                return loginUser.getUserRole();
            }
        }
    }
}
