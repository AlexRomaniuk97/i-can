package edu.lits.testapi.model;

import java.time.LocalDate;
import java.util.List;

public class FilterRequest {
    public List<String> getSelectedProfessions() {
        return selectedProfessions;
    }

    public void setSelectedProfessions(List<String> selectedProfessions) {
        this.selectedProfessions = selectedProfessions;
    }

    public LocalDate getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(LocalDate dateFrom) {
        this.dateFrom = dateFrom;
    }

    public LocalDate getDateTo() {
        return dateTo;
    }

    public void setDateTo(LocalDate dateTo) {
        this.dateTo = dateTo;
    }

    public FilterRequest(List<String> selectedProfessions) {
        this.selectedProfessions = selectedProfessions;
    }

    private List<String> selectedProfessions;
    private LocalDate dateFrom;
    private LocalDate dateTo;

}
