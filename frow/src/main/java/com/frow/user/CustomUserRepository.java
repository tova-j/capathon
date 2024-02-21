package com.frow.user;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomUserRepository extends JpaRepository<CustomUser, Integer> {
    public CustomUser findByUsernameAndPassword(String username, String password);
}