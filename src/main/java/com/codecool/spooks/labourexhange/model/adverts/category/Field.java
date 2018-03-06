package com.codecool.spooks.labourexhange.model.adverts.category;


import com.codecool.spooks.labourexhange.model.adverts.Advertisement;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@NamedQueries({@NamedQuery(name= "getFields",query="SELECT f FROM Field f"),
               @NamedQuery(name= "getFieldWithName",query="SELECT f FROM Field f WHERE f.name = :name")})


@Entity
@Table(name = "JOB_FIELDS")
public class Field {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "fieldOfWork", cascade = CascadeType.ALL)
    private List<Advertisement> advertisements = new ArrayList<>();

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "field", cascade = CascadeType.ALL)
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