package com.SuperProject.repository;

import com.SuperProject.entity.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelJpaRepository extends JpaRepository<Hotel, Integer> {
}
