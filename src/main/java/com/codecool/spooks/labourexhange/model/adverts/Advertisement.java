package com.codecool.spooks.labourexhange.model.adverts;

import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.users.Student;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.adverts.category.Tag;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
@NamedQueries({@NamedQuery(name= "selectAllAdvert", query = "SELECT a FROM Advertisement a"),
               @NamedQuery(name = "selectAdvertWithCity", query ="SELECT a FROM Advertisement a WHERE a.cityOfWorking = :city"),
               @NamedQuery(name = "selectAdvByCity", query = "SELECT a FROM Advertisement a WHERE a.cityOfWorking.id = :id")})

@Entity
@Table(name = "ADVERTISEMENT")
public class Advertisement {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @ManyToOne
    private Student student;

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

    //TODO
    //@ManyToMany
    //private List<Language> spokenLanguages;

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
        //this.spokenLanguages = student.getLanguagesSpoken();
        //student.addStudentsAdverts(this);
        //--------------kirakva az alsók MOST
        //fieldOfWork.addAdvertisements(this);
        //addTagsOfAdvert(tagsOfAdvert);
        this.cityOfWorking = city;
        //city.addAdverts(this);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    //public List<Language> getSpokenLanguages() {
      //  return spokenLanguages;
    //}

    //public void setSpokenLanguages(List<Language> languages) {
        //this.spokenLanguages = languages;
   // }

    public void setCityOfWorking(City cityOfWorking) {
        this.cityOfWorking = cityOfWorking;
    }

    public City getCityOfWorking() {
        return cityOfWorking;
    }

    public Student getStudent(){
        return student;
    }

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
               // ", spokenLanguages=" + spokenLanguages +
                ", cityOfWorking=" + cityOfWorking +
                '}';
    }
}