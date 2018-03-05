package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface LanguageRepository extends JpaRepository<Language, Long> {
    @Transactional
    Language findLanguageByName(String name);

    }
