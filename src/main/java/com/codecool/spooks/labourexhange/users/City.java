package com.codecool.spooks.labourexhange.users;

import com.codecool.spooks.labourexhange.adverts.Advertisement;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
@NamedQueries({@NamedQuery( name = "selectCities" , query = "SELECT c FROM City c" ),
               @NamedQuery(name= "getCityById", query="SELECT c FROM City c WHERE id = :id")})

@Entity
@Table(name = "CITY")
public class City {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

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

    public void setId(int id) {
        this.id = id;
    }

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

    public List<Advertisement> getAdverts() {
        return adverts;
    }

    public void addAdverts(Advertisement adv) {
        this.adverts.add(adv);
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
