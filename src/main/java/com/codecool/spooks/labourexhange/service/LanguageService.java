package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import java.util.List;

public class LanguageService {

    public List<Language> getLanguages(EntityManager em) {
        try {
            List<Language> languageList = em.createNamedQuery("getLanguages", Language.class).getResultList();
            return languageList;
        } catch (NoResultException e) {
            return null;
        }
    }
}
