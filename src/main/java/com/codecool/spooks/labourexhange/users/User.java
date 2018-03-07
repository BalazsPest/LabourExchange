package com.codecool.spooks.labourexhange.users;


import com.codecool.spooks.labourexhange.users.review.Review;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "USERS")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class User {


    @Id
    @Column(name = "USER_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String userName;
    private String phoneNumber;
    private String eMailAdress;
    @Enumerated(value = EnumType.STRING)
    private UserStatus userStatus;

    @OneToMany(mappedBy = "sender")
    private List<Review> reviewsOfSender = new ArrayList<>();

    @OneToMany(mappedBy = "receiver")
    private List<Review> reviewsOfReceiver = new ArrayList<>();



    public User(String name, String eMailAdress, String userName) {
        this.name = name;
        this.userName = userName;
        //this.phoneNumber = phoneNumber;
        this.eMailAdress = eMailAdress;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }



    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String geteMailAdress() {
        return eMailAdress;
    }

    public String getUserName() {
        return userName;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEMailAdress(String eMailAdress) {
        this.eMailAdress = eMailAdress;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setUserStatus(UserStatus userStatus) {
        this.userStatus = userStatus;
    }

    public abstract void checkUserStatus(UserStatus userStatus) throws IllegalArgumentException;

    public UserStatus getUserStatus() {
        return userStatus;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", userName='" + userName + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", eMailAdress='" + eMailAdress + '\'' +
                ", userStatus=" + userStatus +
                ", reviewsOfSender=" + reviewsOfSender +
                ", reviewsOfReceiver=" + reviewsOfReceiver +
                '}';
    }
}
