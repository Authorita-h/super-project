package com.SuperProject.controller;


import com.SuperProject.entity.*;
import com.SuperProject.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.Date;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/owner")
public class MyOwnerController {

    private final HotelService hotelService;
    private final HotelInfoService hotelInfoService;
    private final UserService userService;
    private final OwnerService ownerService;
    private final WorkerService workerService;

    @GetMapping("/home")
    public ModelAndView homePage(@AuthenticationPrincipal User user, ModelAndView model, @RequestParam(defaultValue = "User") String name) {
        model.addObject("name", name);
        model.setViewName("owner_home");
        return model;
    }

    @GetMapping("/owner_jobs")
    public ModelAndView ownerJobs(@AuthenticationPrincipal User user,
                                  ModelAndView model) {
        model.addObject("owner", ownerService.findByUser(user));
        model.setViewName("owner_jobs");
        return model;
    }

    @GetMapping("/del_job")
    public ModelAndView ownerDelJob(@AuthenticationPrincipal User user,
                                    ModelAndView model) {
        Owner owner = ownerService.findByUser(user);
        if(owner.getFreeWorkplace()==0) {
            model.setViewName("owner_home");
            return model;
        }
        model.addObject("owner", ownerService.delWorkplace(user));
        model.setViewName("owner_jobs");
        return model;
    }

    @GetMapping("/give_job")
    public ModelAndView give_job(@AuthenticationPrincipal User user,
                                 ModelAndView model) {
        model.addObject("owner", ownerService.addNewWorkplace(user));
        model.setViewName("owner_jobs");
        return model;
    }

    @GetMapping("/hotel_free")
    public ModelAndView freeHotels(ModelAndView model, @AuthenticationPrincipal User owner) {
        List<Hotel> hotelList = hotelService.getByIsSale();
        model.addObject("hotelList", hotelList);
        model.addObject("myOwner", owner);
        model.setViewName("owner_hotel_free");
        return model;
    }

    @GetMapping("/help")
    public String help(){
        return "owner_help";
    }

    @PostMapping("/hotel_free")
    public String sellHotel(@AuthenticationPrincipal User buyer,
                            @RequestParam(name = "hotel") Long hotelId) {
        Date date = new Date();
        Hotel hotel = hotelService.getById(hotelId);
        hotelInfoService.createInfo(date.toString(),hotel, buyer, hotel.getOwner());
        hotelService.hotelBuy(buyer, hotelId);
        return "redirect:/owner/home";
    }



    @PostMapping("/hotel_sell")
    public String updateHotel(@AuthenticationPrincipal User seller,
                              @RequestParam(name = "hotel") Long hotelId,
                              @RequestParam(required = true, defaultValue = "" ) String action,
                              Model model) {
        if (action.equals("sell")) {
            hotelService.hotelSell(seller, hotelId);
        }
        if (action.equals("return")) {
            hotelService.hotelReturn(hotelId);
        }
        return "redirect:/owner/hotel_sell";
    }

    @GetMapping("/hotel_sell")
    public ModelAndView sellHotel(ModelAndView model, @AuthenticationPrincipal User seller) {
        List<Hotel> hotelList = hotelService.getByOwner(seller);
        model.addObject("hotelList", hotelList);
        model.addObject("seller", seller);
        model.setViewName("owner_sell_hotel");
        return model;
    }

    @GetMapping("/hotel_list")
    public ModelAndView hotelList(ModelAndView model, @AuthenticationPrincipal User owner) {
        List<Hotel> hotelList = hotelService.getByOwner(owner);
        model.addObject("hotelList", hotelList);
        model.setViewName("owner_hotel_list");
        return model;
    }

    @GetMapping("/workers")
    public ModelAndView del_job(ModelAndView model, @AuthenticationPrincipal User user) {
        List<User> workerList = workerService.findByEmployer(user);
        model.addObject("workerList", workerList);
        model.setViewName("owner_workers");
        return model;
    }

    @PostMapping("/workers")
    public String del_job_owner(ModelAndView model,
                                @RequestParam(name = "worker") Long workerId,
                                @AuthenticationPrincipal User myUser) {

        User worker = userService.findUserById(workerId);
        Worker myWorker = workerService.findByUser(worker);
        workerService.delOwner(myWorker);
        ownerService.delWorker(myUser);
        return "redirect:/owner/home";
    }

    // ТАСКУ ДАЕМ ТУТ !!!

    @PostMapping("/workers/task")
    public ModelAndView give_task(ModelAndView model,
                                @RequestParam(name = "worker") Long workerId,
                                @AuthenticationPrincipal User myUser) {
        User user = userService.findUserById(workerId);
        Worker worker = workerService.findByUser(user);
        model.addObject("worker", worker);
        System.out.println("HERE!!!!!!!!!!!GGGGGGGGG");
        model.setViewName("owner_workers_task");
        return model;
    }

    @PostMapping("/workers/task_final")
    public ModelAndView task_final(ModelAndView model,
                                        @RequestParam(name = "task") String task,
                                        @RequestParam(name = "worker") Long workerId) {
        System.out.println("Task: " + task + "ID " + workerId);
//        User user = userService.findUserById(workerId);
        Worker worker = workerService.findById(workerId);
        workerService.addTask(task,worker);
        model.setViewName("owner_home");
        return model;
    }

}