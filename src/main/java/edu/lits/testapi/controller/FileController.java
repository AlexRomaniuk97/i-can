package edu.lits.testapi.controller;

import edu.lits.testapi.model.UploadFileResponse;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.pojo.Picture;
import edu.lits.testapi.service.CardToPicrureService;
import edu.lits.testapi.service.PictureStorageService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.ArrayList;
import java.util.List;

@RestController
public class FileController {
    @Autowired
    private PictureStorageService pictureStorageService;
    @Autowired
    private CardToPicrureService cardToPicrureService;
    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @PostMapping("/uploadFile")
    public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file) {
        Picture dbFile = pictureStorageService.storeFile(file);
        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()// i need !
                .path("/downloadFile/")
                .path(dbFile.getId())
                .toUriString();
        return new UploadFileResponse(dbFile.getFileName(), fileDownloadUri,
                file.getContentType(), file.getSize());
    }
    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @PostMapping("/uploadMultipleFiles")
    public List<UploadFileResponse> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {//айдішку картки
        ArrayList<UploadFileResponse> uploadFileResponses = new ArrayList<>();
        for(MultipartFile file : files){

            CardToPicture dbFile = pictureStorageService.storeFiles(file);
            String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()// i need !
                    .path("/downloadFile/")
                    .path(dbFile.getId().toString())
                    .toUriString();

            UploadFileResponse uploadFileResponse = new UploadFileResponse(dbFile.getFileName(), fileDownloadUri,
                    file.getContentType(), file.getSize());
            uploadFileResponses.add(uploadFileResponse);
        }
        return uploadFileResponses;
    }
    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/downloadFile/{fileId}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String fileId) {
        Picture dbFile = pictureStorageService.getFile(fileId);
        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(dbFile.getFileType()))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + dbFile.getFileName() + "\"")
                .body(new ByteArrayResource(dbFile.getData()));
    }
}