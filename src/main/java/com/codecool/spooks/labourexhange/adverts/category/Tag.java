package com.codecool.spooks.labourexhange.adverts.category;


import com.codecool.spooks.labourexhange.adverts.Advertisement;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="TAG")
public class Tag {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String WorkCategName;

    @ManyToOne
    private Field field;

    public Tag() { }

    public Tag(String name, Field field){
        this.WorkCategName = name;
        this.field = field;
        field.addTagForField(this);
    }

    public long getId() {
        return id;
    }

    public String getWorkCategName() {
        return WorkCategName;
    }

    public void setWorkCategName(String workCategName) {
        this.WorkCategName = workCategName;
    }

    public Field getFieldTitle() {
        return field;
    }

    public void setFieldTitle(Field fieldTitle) {
        this.field = fieldTitle;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "id=" + id +
                ", WorkCategName='" + WorkCategName + '\'' +
                ", field=" + field +
                '}';
    }
}