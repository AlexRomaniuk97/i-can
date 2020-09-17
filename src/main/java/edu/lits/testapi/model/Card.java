package edu.lits.testapi.model;

import java.util.List;

public class Card {
    public int id;
    public String userName = "Андрій";
    public String userPhoto = "url_here";
    public List<String> cardListPhoto = List.of("url_1", "url_2");
    public String location = "Київ";
    public String description = "Відїжджаю на вихідні. Потрібно покропити сад";
    public Integer price = 450;
    public String firstMessage = "text_here";
    public String chat = "url_here";

    public String getUserName() {
        return userName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPhoto() {
        return userPhoto;
    }

    public void setUserPhoto(String userPhoto) {
        this.userPhoto = userPhoto;
    }

    public List<String> getCardListPhoto() {
        return cardListPhoto;
    }

    public void setCardListPhoto(List<String> cardListPhoto) {
        this.cardListPhoto = cardListPhoto;
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

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getFirstMessage() {
        return firstMessage;
    }

    public void setFirstMessage(String firstMessage) {
        this.firstMessage = firstMessage;
    }

    public String getChat() {
        return chat;
    }

    public void setChat(String chat) {
        this.chat = chat;
    }

    public Card() {
    }


}



