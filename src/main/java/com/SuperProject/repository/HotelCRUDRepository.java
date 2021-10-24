package com.SuperProject.repository;


import com.SuperProject.entity.Hotel;
import com.SuperProject.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HotelCRUDRepository extends CrudRepository<Hotel, Integer> {
    List<Hotel> findHotelByOwner(User owner);
    Hotel findHotelByOwnerId(Long owner);
    Hotel findHotelById(Long id);
    List<Hotel> findHotelBySellerIsNotNull();
}
