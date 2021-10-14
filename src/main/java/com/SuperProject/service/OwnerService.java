package com.SuperProject.service;


import com.SuperProject.entity.Owner;
import com.SuperProject.entity.User;
import com.SuperProject.repository.OwnerRepository;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.stereotype.Service;

@Service
@Data
@AllArgsConstructor
public class OwnerService {

    OwnerRepository ownerRepository;

    public Owner save(Owner owner) { return ownerRepository.save(owner); }

    public Owner findByUser(User user) { return ownerRepository.findOwnerByMyUser(user); }
}
