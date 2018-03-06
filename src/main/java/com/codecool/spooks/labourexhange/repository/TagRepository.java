package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.adverts.category.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TagRepository extends JpaRepository<Tag, Long> {
    Tag getTagByName(String names);
    }
