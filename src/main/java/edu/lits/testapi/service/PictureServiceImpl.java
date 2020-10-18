package edu.lits.testapi.service;

import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.pojo.Picture;
import edu.lits.testapi.repository.PictureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PictureServiceImpl implements PictureService{

    @Autowired
    private PictureRepository pictureRepository;

    @Override
    public Picture readByID(String id) {
        Optional<Picture> picture =  pictureRepository.findById(id);
        return picture.get();
    }
}
