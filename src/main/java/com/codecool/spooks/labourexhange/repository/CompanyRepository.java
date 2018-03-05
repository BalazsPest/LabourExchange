package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.users.Company;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyRepository extends JpaRepository<Company, Long> {
    Company findById (Integer id);
}
