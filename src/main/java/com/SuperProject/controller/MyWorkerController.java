package com.SuperProject.controller;


import com.SuperProject.entity.TimeType;
import com.SuperProject.entity.User;
import com.SuperProject.entity.Worker;
import com.SuperProject.service.OwnerService;
import com.SuperProject.service.UserService;
import com.SuperProject.service.WorkerService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/worker")
public class MyWorkerController {

    private final WorkerService workerService;

    private final OwnerService ownerService;

    private final UserService userService;

    @GetMapping("/home")
    public ModelAndView homePage(ModelAndView model, @RequestParam(defaultValue = "User") String name) {
        model.addObject("name", name);
        model.setViewName("worker_home");
        return model;
    }

    @GetMapping("/help")
    public String help(){
        return "worker_help";
    }

    @PostMapping("/update")
    public String updateProfile(@RequestParam int ex,
                                @RequestParam String name,
                                @RequestParam String surname,
                                @RequestParam TimeType timeType,
                                @AuthenticationPrincipal User myUser) {
        workerService.update(ex, name, surname, timeType, myUser);
        return "redirect:/worker/home";
    }

    @GetMapping("/update")
    public ModelAndView edit(ModelAndView model, @AuthenticationPrincipal User user) {

        model.addObject("worker", workerService.findByUser(user));
        model.setViewName("worker_edit_info");
        return model;
    }

    @GetMapping("/profile")
    public ModelAndView profile(ModelAndView model, @AuthenticationPrincipal User user) {
        Worker worker = workerService.findByUser(user);
        if (worker == null) {
            model.addObject("user", user);
            model.setViewName("worker_new_info");
        }
        else {
            model.addObject("worker", worker);
            model.setViewName("worker_profile");
        }
        return model;
    }

    @PostMapping("/profile")
    public ModelAndView createProfile(ModelAndView model,
                                      @RequestParam int ex,
                                      @RequestParam String name,
                                      @RequestParam String surname,
                                      @RequestParam TimeType timeType,
                                      @AuthenticationPrincipal User myUser) {
        Worker worker = new Worker();
        worker.setMyUser(myUser);
        worker.setEx(ex);
        worker.setName(name);
        worker.setSurname(surname);
        worker.setTimeType(timeType);
        model.addObject("worker", workerService.save(worker));
        model.setViewName("worker_home");
        return model;
    }

    @PostMapping("/kill_job")
    public String del_job_owner(ModelAndView model,
                                @RequestParam(name = "owner") String ownerName,
                                @AuthenticationPrincipal User worker) {
        Worker myWorker = workerService.findByUser(worker);
        workerService.delOwner(myWorker);
        User owner = userService.findByUsername(ownerName);
        ownerService.delWorker(owner);
        return "redirect:/worker/home";
    }

    @GetMapping("/get_job")
    public ModelAndView get_job(ModelAndView model, @AuthenticationPrincipal User user) {
        model.setViewName("worker_get_job");
        List<User> ownerList = ownerService.findFreeWorkplace();
        Worker worker = workerService.findByUser(user);
        if (worker == null) model.setViewName("worker_new_info");
        model.addObject("ownerList", ownerList);
        model.addObject("worker", worker);

        return model;
    }

    @PostMapping("/get_job")
    public String get_job_owner(ModelAndView model,
                                @RequestParam(name = "owner") Long ownerId,
                                @AuthenticationPrincipal User myUser) {
        Worker worker = workerService.findByUser(myUser);
        User owner = userService.findUserById(ownerId);
        workerService.addOwner(owner,worker);
        ownerService.addNewWorker(owner);
        return "redirect:/worker/home";
    }

    @GetMapping("/hotel_info")
    public String hotel_info(){
        return "worker_info";
    }

    @GetMapping("/hotel_task")
    public String hotel_task(){
        return "worker_task";
    }

}
