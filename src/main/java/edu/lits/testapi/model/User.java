package edu.lits.testapi.model;

import java.util.List;

public class User {
    public String userPhoto = "url_here";
    public String name = "Альберт";
    public String location = "Путила";
    public String description = "Я Альберт ремонтую все, що не поламане";
    public int phoneNumber = 4949939;
    public int rating;
    public List<String> UserJobFoto = List.of("url_1", "url_2");
    public String leaveFeedback = "Работнік не очінь, дзеркало не робить";
    public String showFeedback;

    public User() {
    }

    public String getUserPhoto() {
        return userPhoto;
    }

    public void setUserPhoto(String userPhoto) {
        this.userPhoto = userPhoto;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public List<String> getUserJobFoto() {
        return UserJobFoto;
    }

    public void setUserJobFoto(List<String> userJobFoto) {
        UserJobFoto = userJobFoto;
    }

    public String getLeaveFeedback() {
        return leaveFeedback;
    }

    public void setLeaveFeedback(String leaveFeedback) {
        this.leaveFeedback = leaveFeedback;
    }

    public String getShowFeedback() {
        return showFeedback;
    }

    public void setShowFeedback(String showFeedback) {
        this.showFeedback = showFeedback;
    }
}
