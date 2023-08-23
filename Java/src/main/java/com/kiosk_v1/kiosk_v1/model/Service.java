package com.kiosk_v1.kiosk_v1.model;

public class Service {

    private int serviceId;

    private String serviceName;

    private String serviceDescription;

    private String serviceAddress;

    private String servicePhone;

    private String serviceHours;

    private int categoryId;

    public Service() {
    }

    public Service(int serviceId, String serviceName, String serviceDescription, String serviceAddress, String servicePhone, String serviceHours, int categoryId) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.serviceDescription = serviceDescription;
        this.serviceAddress = serviceAddress;
        this.servicePhone = servicePhone;
        this.serviceHours = serviceHours;
        this.categoryId = categoryId;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public String getServiceAddress() {
        return serviceAddress;
    }

    public void setServiceAddress(String serviceAddress) {
        this.serviceAddress = serviceAddress;
    }

    public String getServicePhone() {
        return servicePhone;
    }

    public void setServicePhone(String servicePhone) {
        this.servicePhone = servicePhone;
    }

    public String getServiceHours() {
        return serviceHours;
    }

    public void setServiceHours(String serviceHours) {
        this.serviceHours = serviceHours;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
}
