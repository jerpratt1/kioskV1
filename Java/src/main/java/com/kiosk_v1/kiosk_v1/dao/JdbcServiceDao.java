package com.kiosk_v1.kiosk_v1.dao;

import com.kiosk_v1.kiosk_v1.model.Category;
import com.kiosk_v1.kiosk_v1.model.Service;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcServiceDao implements ServiceDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcServiceDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List <Service> getAllService() {
        List<Service> services = new ArrayList<>();

        String sql = "SELECT service_id, service_name, service_description, service_address, service_phone, service_hours, category_id " +
                "FROM services;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        while(results.next()) {
            Service service = mapRowToService(results);
            services.add(service);
        }
        return services;
    }

    @Override
    public List<Service> getServiceById(int id) {
        List<Service> services = new ArrayList<>();

        String sql = "SELECT service_id, service_name, service_description, service_address, service_phone, service_hours, category_id " +
                "FROM services WHERE category_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
        while(results.next()) {
            Service service = mapRowToService(results);
            services.add(service);
        }
        return services;
    }

    @Override
    public Service addService(Service service) {
        String sql = "INSERT INTO services (service_name, service_description, service_address, service_phone, service_hours, category_id) " +
                "VALUES (?,?,?,?,?,?) RETURNING service_id;";
        Integer newServiceId = jdbcTemplate.queryForObject(sql, Integer.class, service.getServiceName(), service.getServiceDescription(),
                service.getServiceAddress(), service.getServicePhone(), service.getServiceHours(), service.getCategoryId());

        return service;
    }

    @Override
    public int editService(Service service) {
        String sql = "UPDATE services " +
                "SET service_name = ?, service_description = ?, service_address = ?, service_phone = ?, service_hours = ? " +
                "WHERE service_id = ?;";
        int numberOfRowsUpdated = jdbcTemplate.update(sql, service.getServiceName(), service.getServiceDescription(),
                service.getServiceAddress(), service.getServicePhone(), service.getServiceHours(), service.getServiceId());
        return numberOfRowsUpdated;
    }

    private Service mapRowToService(SqlRowSet results) {
        Service service = new Service();

        service.setServiceId(results.getInt("service_id"));
        service.setServiceName(results.getString("service_name"));
        service.setServiceDescription(results.getString("service_description"));
        service.setServiceAddress(results.getString("service_address"));
        service.setServicePhone(results.getString("service_phone"));
        service.setServiceHours(results.getString("service_hours"));
        service.setCategoryId(results.getInt("category_id"));

        return service;
    }



}
