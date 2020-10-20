package edu.lits.testapi.pojo;

import javax.persistence.*;

@Entity
@Table(name = "card_to_picture")
public class CardToPicture {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;
        private Long cardId; // внести сюди айдішку артки
        private String picture_id;
        private String fileName;
        private String fileType;
        @Lob
        private byte[] data;

    public CardToPicture() {
    }

    public CardToPicture(String picture_id, String fileName, String fileType, byte[] data) {
        this.picture_id = picture_id;
        this.fileName = fileName;
        this.fileType = fileType;
        this.data = data;
    }

    public CardToPicture(String fileName, String contentType, byte[] bytes) {
        this.fileName = fileName;
        this.fileType = contentType;
        this.data = bytes;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCardId() {
        return cardId;
    }

    public void setCardId(Long cardId) {
        this.cardId = cardId;
    }

    public String getPicture_id() {
        return picture_id;
    }

    public void setPicture_id(String picture_id) {
        this.picture_id = picture_id;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public byte[] getData() {
        return data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }
}
