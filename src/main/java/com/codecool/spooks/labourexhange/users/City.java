package com.codecool.spooks.labourexhange.users;

import com.codecool.spooks.labourexhange.adverts.Advertisement;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "CITY")
public class City {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    //other place declared obj variable name
    @OneToMany(mappedBy = "city")
    private List<Student> students = new ArrayList<>();

    @OneToMany(mappedBy = "cityOfWorking")
    private List<Advertisement> adverts = new ArrayList<>();

    public City(String name) {
        this.name = name;
    }

    public City() { }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void addStudents(Student student) {
        this.students.add(student);
    }

    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    public List<Advertisement> getAdverts() {
        return adverts;
    }

    /*public void setAdverts(List<Advertisement> adverts) {
        this.adverts = adverts;
    }*/
    public void addAdverts(Advertisement adv) {
        this.adverts.add(adv);
    }
}
