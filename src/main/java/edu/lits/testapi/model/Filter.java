package edu.lits.testapi.model;

import java.time.LocalTime;
import java.util.List;

public class Filter {
    private List<String> professionList;


    public Filter() {

    }

    public List<String> getProfessionList() {
        return professionList;
    }

    public void setProfessionList(List<String> professionList) {
        this.professionList = professionList;
    }


    public Filter(List<String> professionList, LocalTime timeFrom, LocalTime timeTo) {
        this.professionList = professionList;

    }
}
