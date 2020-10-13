package edu.lits.testapi.pojo;

import javax.persistence.*;

@Entity
@Table(name = "potentialWorker")
public class PotentialWorker {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long userId;
    private Long cardId;
    private int status;
    private String message;

    public PotentialWorker() {
    }

    public Long getUser_id() {
        return userId;
    }

    public void setUser_id(Long user_id) {
        this.userId = user_id;
    }

    public Long getCard_id() {
        return cardId;
    }

    public void setCard_id(Long card_id) {
        this.cardId = card_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
