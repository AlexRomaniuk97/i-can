package edu.lits.testapi.model;

import java.io.Serializable;

public class JwtRequest implements Serializable {
    private String username;
    private String password;
    private String city;

    public JwtRequest() {
    }

//    public JwtRequest(String username, String password, Integer pricture_id, String city) {
//        this.setUsername(username);
//        this.setPassword(password);
//        this.setPicture_id(pricture_id);
//        this.setCity(city);
//
//    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}