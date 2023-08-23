package com.kiosk_v1.kiosk_v1.controller;

import com.kiosk_v1.kiosk_v1.dao.ServiceDao;
import com.kiosk_v1.kiosk_v1.model.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class ServiceController {
    @Autowired
    private ServiceDao serviceDao;

    @RequestMapping(path = "/services", method = RequestMethod.GET)
    public List <Service> getAllService(){
        List<Service> services = serviceDao.getAllService();
        return services;
    }

    @RequestMapping (path = "/services/{category_id}", method = RequestMethod.GET)
    public List <Service> getServiceById(@PathVariable int category_id){
        List<Service> services = serviceDao.getServiceById(category_id);
        return services;
    }




}
