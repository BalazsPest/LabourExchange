package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.users.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompanyRepository extends JpaRepository<Company, Long> {
    Company findById (Integer id);
    Company findByUserName(String userName);
    Company findByEMailAddress(String eMailAddress);
    List<Company> findAll();
}
