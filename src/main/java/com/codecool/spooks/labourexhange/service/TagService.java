package com.codecool.spooks.labourexhange.service;

import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import com.codecool.spooks.labourexhange.repository.TagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagService {

    @Autowired
    TagRepository tagRepository;

    public void addTag(String name, Field field) {
        Tag newTag = new Tag(name, field);
        tagRepository.save(newTag);
    }
    public Tag getTagByName(String name) {
        return tagRepository.getTagByName(name);

    }
}
