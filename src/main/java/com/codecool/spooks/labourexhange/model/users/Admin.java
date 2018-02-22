package com.codecool.spooks.labourexhange.model.users;

public class Admin extends User {

    public Admin(String name, String eMailAdress, String userName, String password) {
        super(name, eMailAdress, userName, password);
        setUserRole(UserRole.ADMINISTRATOR);
    }

    @Override
    public void checkUserStatus(UserStatus userStatus) throws IllegalArgumentException {
        if(getUserRole() == UserRole.ADMINISTRATOR || userStatus == UserStatus.DELETED){
            setUserStatus(userStatus);
        } else {
            throw new IllegalArgumentException("Administrator cannot be in this status.");
        }
    }


}
