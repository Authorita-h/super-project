package com.SuperProject.service;


import com.SuperProject.entity.Hotel;
import com.SuperProject.entity.HotelInfo;
import com.SuperProject.entity.User;
import com.SuperProject.repository.HotelInfoRepository;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Data
public class HotelInfoService {

    private final HotelInfoRepository hotelInfoRepository;

    public HotelInfo createInfo(String date, Hotel hotel, User buyer, User seller) {
        HotelInfo hotelInfo = new HotelInfo();
        hotelInfo.setDate(date);
        hotelInfo.setHotel(hotel);
        hotelInfo.setBuyer(buyer);
        hotelInfo.setSeller(seller);
        return hotelInfoRepository.save(hotelInfo);
    }

    public List<HotelInfo> getAll() {
        return hotelInfoRepository.findAll();
    }
}
