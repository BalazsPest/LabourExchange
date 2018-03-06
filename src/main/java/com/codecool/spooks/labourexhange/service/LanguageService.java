package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.repository.LanguageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class LanguageService {

    @Autowired
    LanguageRepository languageRepository;

    public List<Language> getLanguages() {
       return languageRepository.findAll();
    }
    public void addNewLanguage(String name, Language.LanguageLevel level) {
        Language newLanguage = new Language(name, level);
        languageRepository.save(newLanguage);
    }

    public Language getLanguageByName(String languageName) {
        return languageRepository.findLanguageByName(languageName);
    }
}
