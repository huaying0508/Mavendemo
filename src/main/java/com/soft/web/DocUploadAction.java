package com.soft.web;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.biz.UserBiz;
import com.soft.biz.UserBizImpl;
import com.soft.entity.tbldoc;
import com.soft.tools.MybatisUtil;
import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
public class DocUploadAction extends ActionSupport implements SessionAware {

    private Map<String, Object> session = null;
    @Resource
    private UserBiz userBiz ;
    private tbldoc doc;

    private File uploadFile;

    private String uploadFileContentType;

    private String uploadFileFileName;


    //上传
    public String DocUpload() {
        String msg = "docfail";
        SqlSession session = MybatisUtil.getSession();

        //时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String datemsg = sdf.format(new Date());

        //上传的文件信息
        System.out.println("filename:" + this.getUploadFileFileName());
        System.out.println("contentType:" + this.getUploadFileContentType());
        System.out.println("file:" + this.getUploadFile());

        String realPath = ServletActionContext.getServletContext().getRealPath("/upload");

        File file = new File(realPath);

        if (file.exists()) {
            file.mkdirs();
        }

        try {

            FileUtils.copyFile(uploadFile, new File(file, uploadFileFileName));

        } catch (IOException e) {

            e.printStackTrace();
        }

        //doc参数

        String docpath = realPath + "\\" + this.getUploadFileFileName();

        tbldoc td = new tbldoc(2, doc.getDocname(), doc.getDocdetail(), docpath, doc.getDintegral(), datemsg, doc.getDtno());

        int num = userBiz.DocUpload(td);

        if (num > 0) {
            msg = "docpass";
        }

        return msg;
    }


    //下载
    public String DocDown() {
        String msg = "";

        return msg;
    }


    @Override
    public void setSession(Map<String, Object> map) {

        session = map;
    }


    public tbldoc getDoc() {
        return doc;
    }

    public void setDoc(tbldoc doc) {
        this.doc = doc;
    }

    public File getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String getUploadFileContentType() {
        return uploadFileContentType;
    }

    public void setUploadFileContentType(String uploadFileContentType) {
        this.uploadFileContentType = uploadFileContentType;
    }

    public String getUploadFileFileName() {
        return uploadFileFileName;
    }

    public void setUploadFileFileName(String uploadFileFileName) {
        this.uploadFileFileName = uploadFileFileName;
    }
}
