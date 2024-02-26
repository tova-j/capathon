package com.frow.user;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomUserRepository extends JpaRepository<CustomUser, Integer> {
    public CustomUser findByUsernameAndPassword(String username, String password);

    public List<CustomUser> findAllCustomerUsersByRole(String role);

    public CustomUser findAllCustomerUsersById(int id);
}