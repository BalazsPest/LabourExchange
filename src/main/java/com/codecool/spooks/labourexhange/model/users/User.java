package com.codecool.spooks.labourexhange.model.users;

import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;


import com.codecool.spooks.labourexhange.model.users.review.Review;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@NamedQueries({@NamedQuery( name = "findUser", query = "SELECT u FROM User u WHERE u.userName = :userName"),
        @NamedQuery(name="checkUserPassword", query = "SELECT u FROM User u WHERE u.eMailAddress = :eMailAddress")})


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
    private String eMailAddress;
    private String password;


    @Enumerated(value = EnumType.STRING)
    private UserStatus userStatus;

    @Enumerated(value = EnumType.STRING)
    private UserRole userRole;

    @OneToMany(mappedBy = "sender")
    private List<Review> reviewsOfSender = new ArrayList<>();

    @OneToMany(mappedBy = "receiver")
    private List<Review> reviewsOfReceiver = new ArrayList<>();




    public User(String name,String userName, String eMailAddress,  String password, UserRole role) {
        this.name = name;
        this.userName = userName;
        this.eMailAddress = eMailAddress;
        this.password = password;
        this.userRole = role;
        this.userStatus = UserStatus.ACTIVE;
    }

    public User() {
    }

    public List<Review> getReviewsOfSender() {
        return reviewsOfSender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //is it okay such way?
    public void setReviewsOfSender(List<Review> reviewsOfSender) {
        this.reviewsOfSender = reviewsOfSender;
    }
    //is it okay such way?
    public void setReviewsOfReceiver(List<Review> reviewsOfReceiver) {
        this.reviewsOfReceiver = reviewsOfReceiver;
    }

    public List<Review> getReviewsOfReceiver() {
        return reviewsOfReceiver;
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

    public String geteEMailAddress() {
        return eMailAddress;
    }

    public String getUserName() {
        return userName;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEMailAddress(String eMailAddress) {
        this.eMailAddress = eMailAddress;
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

    public UserRole getUserRole() {
        return userRole;
    }

    public void setUserRole(UserRole userRole) {
        this.userRole = userRole;
    }

    @Override
    public String toString() {

        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", userName='" + userName + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", eMailAddress='" + eMailAddress + '\'' +
                ", userStatus=" + userStatus +
                ", userRole=" + userRole +
                ", reviewsOfSender=" + reviewsOfSender +
                ", reviewsOfReceiver=" + reviewsOfReceiver +
                '}';
    }
}
