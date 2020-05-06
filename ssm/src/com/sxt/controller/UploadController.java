package com.sxt.controller;

import com.sxt.entity.Emp;
import com.sxt.exception.MyException;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.UUID;

@Controller
public class UploadController {

    @RequestMapping("upload.html")
    public String uploads(){
     return "upload/upload";
    }
    @RequestMapping("uuu")
    public String upload(MultipartFile file, HttpServletRequest req)
            throws Exception {
        System.out.println(file.getOriginalFilename()+file.getName());
        System.out.println("==========================");
        //随机文件名
        //后缀名suffixName
        String name = file.getOriginalFilename();
        System.out.println("文件名："+name);
//        System.out.println("随机文件名："+fileName);
//        // C://xx/img/aa.jpg  linux:/url/tomcat/webapp/AAA/13cd.png
//        File file2 = new File(path + fileName + "." + extension);

        return "success";
    }


}
