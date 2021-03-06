package edu.lits.testapi.service;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.pojo.Picture;
import edu.lits.testapi.repository.CardToPictureRepository;
import edu.lits.testapi.repository.PictureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
@Service
public class PictureStorageService {
    @Autowired
    private PictureRepository pictureRepository;
    @Autowired
    private CardToPictureRepository cardToPictureRepository;
    public Picture storeFile(MultipartFile file) {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        try {
            if(fileName.contains("..")) {
                throw new RuntimeException("Sorry! Filename contains invalid path sequence " + fileName);
            }
            Picture picture = new Picture(fileName, file.getContentType(), file.getBytes());
            return pictureRepository.save(picture);
        } catch (IOException ex) {
            throw new RuntimeException("Could not store file " + fileName + ". Please try again!", ex);
        }
    }

    public CardToPicture storeFiles(MultipartFile file) {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        try {
            if(fileName.contains("..")) {
                throw new RuntimeException("Sorry! Filename contains invalid path sequence " + fileName);
            }
            CardToPicture cardToPicture = new CardToPicture(fileName, file.getContentType(), file.getBytes());
            return cardToPictureRepository.save(cardToPicture);
        } catch (IOException ex) {
            throw new RuntimeException("Could not store file " + fileName + ". Please try again!", ex);
        }
    }


    public Picture getFile(String fileId) {
        return pictureRepository.findById(fileId)
                .orElseThrow(() -> new RuntimeException("File not found with id " + fileId));
    }
}