package com.codecool.spooks.labourexhange.adverts.category;


import com.codecool.spooks.labourexhange.adverts.Advertisement;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "JOB_FIELDS")
public class Field {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    @OneToMany(mappedBy = "fieldOfWork")
    private List<Advertisement> advertisements = new ArrayList<>();

    @OneToMany(mappedBy = "field")
    private List<Tag> tagsOfFields = new ArrayList<>();

    public Field(){}

    public Field(String name){
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Advertisement> getAdvertisements() {
        return advertisements;
    }

    public void addAdvertisements(Advertisement advertisement) {
        this.advertisements.add(advertisement);
    }

    public List<Tag> getTagsOfFields() {
        return tagsOfFields;
    }


    @Override
    public String toString() {
        return "Field: "+name;
    }

    public void addTagForField(Tag tagForField) {
        this.tagsOfFields.add(tagForField);
    }
}
//Field-Tag