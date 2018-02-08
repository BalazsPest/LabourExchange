package com.codecool.spooks.labourexhange.users;


import com.codecool.spooks.labourexhange.adverts.Advertisement;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "STUDENT")
public class Student extends User {


    @Enumerated(value = EnumType.STRING)
    private Gender gender;

    private String birthdate;

    private String image;

    @Enumerated(EnumType.STRING)
    private UserStatus status;

    @ManyToOne(cascade = CascadeType.ALL)
    private City city;

    @OneToMany(mappedBy = "student")
    private List<Advertisement> studentsAdverts = new ArrayList<>();

    @ManyToMany
    List<Language> languagesSpoken = new ArrayList<>();


    public Student() { }

    public Student(String name, String eMailAdress, String userName) {
        super(name, eMailAdress, userName);
    }

    public Student(String name, String eMailAdress, String userName,
                   Gender gender, String birthdate, City city, List<Language> languages) {
        super(name, eMailAdress, userName);
        this.gender = gender;
        this.birthdate = birthdate;
        this.status = UserStatus.ACTIVE;
        this.city = city;
        this.languagesSpoken = languages;
        city.addStudents(this);
    }

    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
    }

    public List<Language> getLanguagesSpoken() {
        return languagesSpoken;
    }

    public void setLanguagesSpoken(List<Language> languagesSpoken) {
        this.languagesSpoken = languagesSpoken;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    @Override
    public void checkUserStatus(UserStatus userStatus) throws IllegalArgumentException {
        if (userStatus != UserStatus.ADMINISTRATOR || userStatus != UserStatus.PREMIUM) {
            setUserStatus(userStatus);
        } else {
            throw new IllegalArgumentException("Student cannot be in this status");
        }
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public List<Advertisement> getStudentsAdverts() {
        return studentsAdverts;
    }

    public void addStudentsAdverts(Advertisement studentsAdvert) {
        this.studentsAdverts.add(studentsAdvert);
    }

    @Override
    public String toString() {
        return "Student{" +
                "gender=" + gender +
                ", birthdate='" + birthdate + '\'' +
                ", image='" + image + '\'' +
                ", status=" + status +
                '}';
    }

    public enum Gender{
        FEMALE,
        MALE,
        OTHER;
    }
}