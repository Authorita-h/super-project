package com.SuperProject.service;


import com.SuperProject.entity.User;
import com.SuperProject.entity.Worker;
import com.SuperProject.repository.WorkerRepository;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.stereotype.Service;

@Service
@Data
@AllArgsConstructor
public class WorkerService {

    private final WorkerRepository workerRepository;

    public Worker findByUser(User user) {
        return workerRepository.findWorkerByMyUser(user);
    }

    public Worker save(Worker worker) {
        return workerRepository.save(worker);
    }

}
