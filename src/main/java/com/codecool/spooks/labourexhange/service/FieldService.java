package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.Language;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import java.util.List;

public class FieldService {

    public Field findField(String fieldName, EntityManager em) {
        try {
            Field field = em.createNamedQuery("getFieldWithName", Field.class).setParameter("name", fieldName).getSingleResult();
            return field;

        } catch (NoResultException e){
            System.out.println(" E R R O R");
        }

        System.out.println("1");
        return null;
    }

    public List<Field> getFields(EntityManager em) {
        try {
            List<Field> fieldList = em.createNamedQuery("getFields", Field.class).getResultList();
            return fieldList;
        } catch (NoResultException e) {
            return null;
        }
    }
}
