package com.kiosk_v1.kiosk_v1.controller;

import com.kiosk_v1.kiosk_v1.dao.ServiceDao;
import com.kiosk_v1.kiosk_v1.model.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class ServiceController {
    @Autowired
    private ServiceDao serviceDao;

    @RequestMapping(path = "/test", method = RequestMethod.GET)
    public Service getTestService(){
        Service newService = serviceDao.getTestService();
        return newService;
    }




}
