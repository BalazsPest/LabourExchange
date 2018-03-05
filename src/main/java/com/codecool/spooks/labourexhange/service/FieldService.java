package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.repository.FieldRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import java.util.List;

@Service
public class FieldService {

    @Autowired
    FieldRepository fieldRepository;

    public Field getFieldByName(String fieldName) {
         return fieldRepository.findByName(fieldName);
    }

    public List<Field> getFields() {
        return fieldRepository.findAll();
        /*try {
            List<Field> fieldList = em.createNamedQuery("getFields", Field.class).getResultList();
            return fieldList;
        } catch (NoResultException e) {
            return null;
        }*/
    }
}
