package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.users.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, Long> {


}