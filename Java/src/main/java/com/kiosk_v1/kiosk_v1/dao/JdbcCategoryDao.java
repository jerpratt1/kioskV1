package com.kiosk_v1.kiosk_v1.dao;

import com.kiosk_v1.kiosk_v1.model.Category;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


@Component
public class JdbcCategoryDao implements CategoryDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcCategoryDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<>();

        String sql = "SELECT category_id, category_name, updated, url FROM categories;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        while(results.next()) {
            Category category = mapRowToCategory(results);
            categories.add(category);
        }
        return categories;
    }

    private Category mapRowToCategory(SqlRowSet results) {
        Category category = new Category();

        category.setCategoryId(results.getInt("category_id"));
        category.setCategoryName(results.getString("category_name"));
        category.setUpdated(results.getDate("updated"));
        category.setUrl(results.getString("url"));

        return category;
    }



}
