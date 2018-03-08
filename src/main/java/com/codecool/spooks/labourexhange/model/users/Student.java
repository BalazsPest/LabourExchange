package com.codecool.spooks.labourexhange.model.users;


import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
@NamedQueries({@NamedQuery(name= "getStudents", query = "SELECT s FROM Student s WHERE s.name = :name"),
                @NamedQuery(name = "getStudentById", query = "SELECT s FROM Student s WHERE s.id =:id")})


@Entity
@Table(name = "STUDENT")
public class Student extends User {


    @ManyToMany
    List<Language> languagesSpoken = new ArrayList<>();
    @Enumerated(value = EnumType.STRING)
    private Gender gender;
    private String birthdate;
    private String image;
    private String URL;
    @Enumerated(EnumType.STRING)
    private UserStatus status;
    //@Enumerated(EnumType.STRING)
    //private UserRole userRole;

    @ManyToOne
    private City city;
    @OneToMany(mappedBy = "student")
    private List<Advertisement> studentsAdverts = new ArrayList<>();


    public Student() {}

    public Student(String name, String userName, String eMailAddress, String password) {
        super(name, userName, eMailAddress, password, UserRole.STUDENT);
        this.status = UserStatus.ACTIVE;
    }


    public Student(String name, String userName, String eMailAddress, String password,
                   Gender gender, String birthdate, City city,
                   List<Language> languages) {
        super(name, userName, eMailAddress, password, UserRole.STUDENT);
        this.gender = gender;
        this.birthdate = birthdate;
        this.status = UserStatus.ACTIVE;
        //this.userRole = UserRole.STUDENT;
        this.city = city;
        this.languagesSpoken = languages;
        //city.addStudents(this);
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
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
        /*if (userRole != UserRole.ADMINISTRATOR) {
            setUserStatus(userStatus);
        } else {
            throw new IllegalArgumentException("Student cannot be in this status");
        }*/
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
        return "Student{" + super.toString() +
                "gender=" + gender +
                ", birthdate='" + birthdate + '\'' +
                ", image='" + image + '\'' +
                ", status=" + status +
                '}';
    }

    public enum Gender{
        FEMALE,
        MALE,
        OTHER
    }
}