package com.codecool.spooks.labourexhange.users.review;


import com.codecool.spooks.labourexhange.users.Company;
import com.codecool.spooks.labourexhange.users.Student;
import com.codecool.spooks.labourexhange.users.User;

import javax.persistence.*;

@Entity
@Table(name = "REVIEW")
public class Review {

@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int reviewId;

@Column(name = "description")
private String reviewDescription;

@ManyToOne
private User sender;

@ManyToOne
private User receiver;

@Enumerated(EnumType.STRING)
private SatisfactionLevel satisfactionLevel;



    public Review() { }

    public Review(String reviewDescription, User sender, User receiver, SatisfactionLevel satisfactionLevel) {
        this.reviewDescription = reviewDescription;
        this.sender = sender;
        this.receiver = receiver;
        this.satisfactionLevel = satisfactionLevel;
    }

    public int getReviewId() {
        return reviewId;
    }


    public String getReviewDescription() {
        return reviewDescription;
    }

    public void setReviewDescription(String reviewDescription) {
        this.reviewDescription = reviewDescription;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    @Override
    public String toString() {
        return "Review{" +
                "reviewId=" + reviewId +
                ", reviewDescription='" + reviewDescription + '\'' +
                ", sender=" + sender +
                ", receiver=" + receiver +
                '}';
    }

    public SatisfactionLevel getSatisfactionLevel() {
        return satisfactionLevel;
    }

    public void setSatisfactionLevel(SatisfactionLevel satisfactionLevel) {
        this.satisfactionLevel = satisfactionLevel;
    }
}
