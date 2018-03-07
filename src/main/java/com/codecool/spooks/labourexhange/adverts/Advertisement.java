package com.codecool.spooks.labourexhange.adverts;

import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Language;
import com.codecool.spooks.labourexhange.users.Student;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.adverts.category.Tag;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
@NamedQueries({@NamedQuery(name= "selectAllAdvert", query = "SELECT a FROM Advertisement a"),
@NamedQuery(name = "selectAdvertWhithCity", query ="SELECT a FROM Advertisement a WHERE a.cityOfWorking = 1")})
@Entity
@Table(name = "ADVERTISEMENT")
public class Advertisement {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @ManyToOne
    private Student student;

    @Override

    public String toString() {
        return "Advertisement{" +
                "id=" + id +
                ", student=" + student +
                ", status=" + status +
                ", fieldOfWork=" + fieldOfWork +
                ", tagsOfAdvert=" + tagsOfAdvert +
                ", titleOfAdvert='" + titleOfAdvert + '\'' +
                ", descriptionOfAdvert='" + descriptionOfAdvert + '\'' +
                ", creationTime=" + creationTime +
                ", weeklyCapacity=" + weeklyCapacity +
                ", requestedMoneyPerHour=" + requestedMoneyPerHour +
                ", spokenLanguages=" + spokenLanguages +
                ", cityOfWorking=" + cityOfWorking +
                '}';
    }

    @Enumerated(value= EnumType.STRING)
    private Status status;

    @ManyToOne
    private Field fieldOfWork;

    @ManyToMany()
    private List<Tag> tagsOfAdvert;

    @Column(name = "title")
    private String titleOfAdvert;

    @Column(name="description")
    private String descriptionOfAdvert;

    @Temporal(TemporalType.DATE)
    private Date creationTime;

    private int weeklyCapacity;

    @Column(name = "money_per_hour")
    private int requestedMoneyPerHour;
    //nincs feltöltve
    @ManyToMany
    private List<Language> spokenLanguages;

    @ManyToOne
    private City cityOfWorking;



    public Advertisement() {}

    public Advertisement(Student student, Status status, Field fieldOfWork, String titleOfAdvert,
                         String descriptionOfAdvert, Date creationTime,
                         int weeklyCapacity, int requestedMoneyPerHour, City city, List<Tag> tagsOfAdvert) {
        this.status = status;
        this.student = student;
        this.fieldOfWork = fieldOfWork;
        this.tagsOfAdvert = tagsOfAdvert;
        this.titleOfAdvert = titleOfAdvert;
        this.descriptionOfAdvert = descriptionOfAdvert;
        this.creationTime = creationTime;
        this.weeklyCapacity = weeklyCapacity;
        this.requestedMoneyPerHour = requestedMoneyPerHour;
        this.spokenLanguages = student.getLanguagesSpoken();
        //student.addStudentsAdverts(this);
        fieldOfWork.addAdvertisements(this);
        addTagsOfAdvert(tagsOfAdvert);
        city.addAdverts(this);
        this.cityOfWorking = city;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Field getFieldOfWork() {
        return fieldOfWork;
    }

    public void setFieldOfWork(Field fieldOfWork) {
        this.fieldOfWork = fieldOfWork;
    }

    public List<Tag> getTagsForField() {
        return tagsOfAdvert;
    }


    //define how to add to lists like these
    /*public void setTagForField(List<Tag> tagsForField) {
        this.tagsForField = new ArrayList<>();
        for (Tag tag : tagsForField) {
            this.tagsForField.add(tag);
        }
    }*/

    public void addTagsOfAdvert(List<Tag> tagsOfAdv) {
        this.tagsOfAdvert = tagsOfAdv;
    }
    public String getTitleOfAdvert() {
        return titleOfAdvert;
    }

    public void setTitleOfAdvert(String titleOfAdvert) {
        this.titleOfAdvert = titleOfAdvert;
    }

    public String getDescriptionOfAdvert() {
        return descriptionOfAdvert;
    }

    public void setDescriptionOfAdvert(String descriptionOfAdvert) {
        this.descriptionOfAdvert = descriptionOfAdvert;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    public int getWeeklyCapacity() {
        return weeklyCapacity;
    }

    public void setWeeklyCapacity(int weeklyCapacity) {
        this.weeklyCapacity = weeklyCapacity;
    }

    public int getRequestedMoneyPerHour() {
        return requestedMoneyPerHour;
    }

    public void setRequestedMoneyPerHour(int requestedMoneyPerHour) {
        this.requestedMoneyPerHour = requestedMoneyPerHour;
    }

    public List<Language> getSpokenLanguages() {
        return spokenLanguages;
    }

    //define how to set Lists like these

    public void setSpokenLanguages(List<Language> languages) {
        this.spokenLanguages = languages;
    }

    /*public Shire getShireOfWorking() {
        return shireOfWorking;
    }

    public void setShireOfWorking(Shire shireOfWorking) {
        this.shireOfWorking = shireOfWorking;
    }*/


    public void setCityOfWorking(City cityOfWorking) {
        this.cityOfWorking = cityOfWorking;
    }

    public City getCityOfWorking() {
        return cityOfWorking;
    }

    public Student getStudent(){
        return student;
    }
}
