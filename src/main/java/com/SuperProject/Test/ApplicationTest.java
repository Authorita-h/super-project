package com.SuperProject.Test;
import com.SuperProject.service.WorkerService;
import org.testng.Assert;
import org.testng.annotations.Test;
import com.SuperProject.entity.*;
import com.SuperProject.repository.*;

import com.SuperProject.Application;

public class ApplicationTest extends Application {

    @Test
    public void testAddOwner() throws Exception {
        Worker worker = new Worker();
        User owner = new User();
        worker.setEmployer(owner);
        Assert.assertEquals(owner, worker.getEmployer());
    }

    @Test
    public void testAddHotel() throws Exception {
        Worker worker = new Worker();
        Hotel hotel = new Hotel();
        worker.setHotel(hotel);
        Assert.assertEquals(hotel, worker.getHotel());
    }

    @Test
    public void testAddName() throws Exception {
        Worker worker = new Worker();
        worker.setName("name");
        Assert.assertEquals("name", worker.getName());
    }

    @Test
    public void testAddSurname() throws Exception {
        Worker worker = new Worker();
        worker.setSurname("surname");
        Assert.assertEquals("surname", worker.getSurname());
    }

    @Test
    public void testAddEx() throws Exception {
        Worker worker = new Worker();
        worker.setEx(1);
        Assert.assertEquals(1, worker.getEx());
    }

    @Test
    public void testAddTimeType() throws Exception {
        Worker worker = new Worker();
        TimeType timeType = TimeType.FULLTIME;
        worker.setTimeType(timeType);
        Assert.assertEquals(TimeType.FULLTIME, worker.getTimeType());
    }

    @Test
    public void testAddUser() throws Exception {
        Worker worker = new Worker();
        User user = new User();
        worker.setMyUser(user);
        Assert.assertEquals(user, worker.getMyUser());
    }

    @Test
    public void testSetId() throws Exception {
        Worker worker = new Worker();
        worker.setId(1l);
        Long id = 1l;
        Assert.assertEquals(id, worker.getId());
    }
}
