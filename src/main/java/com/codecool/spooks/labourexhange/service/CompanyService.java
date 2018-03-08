package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.Company;
import com.codecool.spooks.labourexhange.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CompanyService {


    @Autowired
    CompanyRepository companyRepository;


    public Company getCompanyById(Integer id) {
        return companyRepository.findById(id);
    }


    public void addCompany(String name, String eMailAddress, String userName, String password) {
        Company newCompany = new Company(name, eMailAddress, userName, password);
        companyRepository.save(newCompany);
    }

    public boolean checkCompany(String userName, String eMailAddress) {
        if (companyRepository.findByUserName(userName)!= null || companyRepository.findByEMailAddress(eMailAddress)!= null){
            return true;
        } else {
            return false;
        }
    }
    public List<Company> getAllCompanies(){
        return companyRepository.findAll();
    }
}
