package com.kiosk_v1.kiosk_v1.model;

import java.util.Date;

public class Category {

    private int categoryId;
    private String categoryName;
    private Date updated;
    private String url;

    public Category() {
    }

    public Category(int categoryId, String categoryName, Date updated) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.updated = updated;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}
