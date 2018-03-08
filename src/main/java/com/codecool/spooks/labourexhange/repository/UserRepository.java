package com.codecool.spooks.labourexhange.repository;

import com.codecool.spooks.labourexhange.model.users.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEMailAddress(String email);
    User findByUserName(String userName);
    User findUserByUserName(String userName);
}
