package com.codecool.spooks.labourexhange.model.users;


import javax.persistence.*;

@NamedQuery(name="selectCompanies", query = "SELECT c FROM Company c")
@Entity
@Table(name = "COMPANY")
public class Company extends User {


    private String description;

    private String link;

    private boolean verified;

    public Company() { }

    public Company(String name, String eMailAddress, String userName, String password) {
        super(name, eMailAddress, userName, password, UserRole.COMPANY);
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
        /*if (userStatus != UserStatus.ADMINISTRATOR) {
            setUserStatus(userStatus);
        } else {
            throw new IllegalArgumentException("Company cannot be in this status");
        }*/
    }

    public String getDescription() {
        return description;
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