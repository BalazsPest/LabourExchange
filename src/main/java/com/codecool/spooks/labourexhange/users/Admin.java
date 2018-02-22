package com.codecool.spooks.labourexhange.users;

public class Admin extends User {

    public Admin(String name, String eMailAdress, String userName, String password) {
        super(name, eMailAdress, userName, password);
        setUserStatus(UserStatus.ADMINISTRATOR);
    }

    @Override
    public void checkUserStatus(UserStatus userStatus) throws IllegalArgumentException {
        if(userStatus == UserStatus.ADMINISTRATOR || userStatus == UserStatus.DELETED){
            setUserStatus(userStatus);
        } else {
            throw new IllegalArgumentException("Administrator cannot be in this status.");
        }
    }


}