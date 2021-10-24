package com.SuperProject.repository;


import com.SuperProject.entity.User;
import com.SuperProject.entity.Worker;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface WorkerRepository extends JpaRepository<Worker, Integer> {
    Worker findWorkerByMyUser(User user);
    List<Worker> findWorkerByEmployer(User user);
}
