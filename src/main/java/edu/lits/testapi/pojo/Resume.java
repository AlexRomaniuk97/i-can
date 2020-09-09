package edu.lits.testapi.pojo;

import javax.persistence.*;

@Entity
@Table(name = "resume")
public class Resume {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
    private String user_id;
    private Long profession_id;


    public Resume() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public Long getProfession_id() {
        return profession_id;
    }

    public void setProfession_id(Long profession_id) {
        this.profession_id = profession_id;
    }
}