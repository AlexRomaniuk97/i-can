package edu.lits.testapi.service;

import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.pojo.Picture;

public interface PictureService {
    Picture readByID(String id);
}
