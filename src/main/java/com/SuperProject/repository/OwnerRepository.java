package com.SuperProject.repository;

import com.SuperProject.entity.Owner;
import com.SuperProject.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface OwnerRepository extends JpaRepository<Owner, Integer> {
    Owner findOwnerByMyUser(User user);
}
