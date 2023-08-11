package com.kiosk_v1.kiosk_v1.controller;


import com.kiosk_v1.kiosk_v1.dao.CategoryDao;
import com.kiosk_v1.kiosk_v1.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class CategoryController {

    @Autowired
    private CategoryDao categoryDao;

    @RequestMapping(path = "/categories", method = RequestMethod.GET)
    public List<Category> getAllCategories(){
        List<Category> categories = categoryDao.getAllCategories();
        return categories;
    }
}
