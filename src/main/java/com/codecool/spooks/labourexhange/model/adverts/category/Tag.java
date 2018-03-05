package com.codecool.spooks.labourexhange.model.adverts.category;


import javax.persistence.*;

@Entity
@Table(name="TAG")
public class Tag {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String name;

    @ManyToOne
    private Field field;

    public Tag() { }

    public Tag(String name, Field field){
        this.name = name;
        this.field = field;
        //field.addTagForField(this);
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
                ", name='" + name + '\'' +
                ", field=" + field +
                '}';
    }
}