package com.codecool.spooks.labourexhange.users;


import com.codecool.spooks.labourexhange.users.review.Review;

import javax.persistence.*;
import java.util.List;

@NamedQuery(name="selectCompanies", query = "SELECT c FROM Company c")
@Entity
@Table(name = "COMPANY")
public class Company extends User {


    private String description;

    private String link;

    private boolean verified;


    public Company() { }

    public Company(String name, String eMailAdress, String userName) {
        super(name, eMailAdress, userName);
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setLink(String link) {
        this.link = link;
    }


    //todo
    public void validateCompany() {
        this.verified = true;
    }


    @Override
    public void checkUserStatus(UserStatus userStatus) throws IllegalArgumentException {
        if (userStatus != UserStatus.ADMINISTRATOR) {
            setUserStatus(userStatus);
        } else {
            throw new IllegalArgumentException("Company cannot be in this status");
        }
    }

    @Override
    public String toString() {
        return "Company{" +
                "description='" + description + '\'' +
                ", link='" + link + '\'' +
                ", verified=" + verified +
                '}';
    }
}

