package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.repository.FieldRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
    }


    public void addField(String fieldName) {
        Field newField = new Field(fieldName);
        fieldRepository.save(newField);
    }

    public void saveField(Field field) {
        fieldRepository.save(field);
    }

}
