package com.kiosk_v1.kiosk_v1.dao;

import com.kiosk_v1.kiosk_v1.model.Service;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcServiceDao implements ServiceDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcServiceDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Service getTestService() {
        return null;
    }
}
