package edu.lits.testapi.service;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.repository.CardToPictureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;

@Service
public class CardToPictureServicelmpl implements CardToPicrureService {
    @Autowired
    private CardToPictureRepository card_to_pictureRepository;

    @Override
    public CardToPicture readByID(Long id) {
        Optional<CardToPicture> card_to_picture =  card_to_pictureRepository.findById(1L);
        return card_to_picture.get();
    }

}
