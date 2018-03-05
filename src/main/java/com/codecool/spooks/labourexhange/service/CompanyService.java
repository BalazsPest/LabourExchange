package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.Company;
import com.codecool.spooks.labourexhange.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyService {

    @Autowired
    CompanyRepository companyRepository;

    public Company getStudentById(Integer id) {
        return companyRepository.findById(id);
    }


}
