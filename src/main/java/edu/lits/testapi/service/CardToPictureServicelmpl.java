package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.repository.CardToPictureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CardToPictureServicelmpl implements CardToPicrureService {
    @Autowired
    private CardToPictureRepository card_to_pictureRepository;


    @Override
    public void readByPictureId(String PictureId) {
           // return card_to_pictureRepository.findAllByAuthorId_Equals(author_id);
    }
}
