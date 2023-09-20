package com.kiosk_v1.kiosk_v1.dao;

import com.kiosk_v1.kiosk_v1.model.Service;

import java.util.List;


public interface ServiceDao {

    List <Service> getAllService();

    List <Service> getServiceById(int id);

    Service addService(Service service);

    int editService(Service service);

}
