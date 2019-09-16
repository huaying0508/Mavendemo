package com.soft.web;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.biz.AdminBiz;

import com.soft.biz.AdminBizImpl;
import com.soft.entity.Admin;
import com.soft.entity.Users;

import com.soft.entity.tbladmin;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
public class AdmLoginAction extends ActionSupport implements SessionAware {

    @Resource
    private AdminBiz adminBiz ;
    private Admin admin;
    private Users user;
    private String uname;
    private List<Admin> list;
    private String securityCode;
    private Map<String, Object> session = null;

    private File uploadImage;

    private String uploadImageContentType;

    private String uploadImageFileName;

    private Map<String, String> remap = new HashMap<String, String>();
    private Map<String, String> recheck = new HashMap<String, String>();

    //----------------------------------登录------------------------------------------
    public String execute() {

        tbladmin ulogin = adminBiz.Login(admin.getAdname(), admin.getAdpwd());

        String serverCode = (String) session.get("SESSION_SECURITY_CODE");

        session.put("usertest", ulogin);

        if (null != ulogin) {

            if (serverCode.equals(securityCode)) {

                remap.put("info", "success");
            } else {
                remap.put("info", "codefail");
            }

        } else {
            remap.put("info", "fail");

        }
        return "rejson";
    }

    //-------------------------检查用户名---------------------------
    public String CheckName() {

        Users checkU = adminBiz.CheckName(uname);

        if (null != checkU) {
            recheck.put("checkmsg", "success");
        } else {
            recheck.put("checkmsg", "fail");
        }

        return "checkN";
    }


    //添加用户
    public String AddUser() {

        String addmsg = "addfail";

        //获取时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String message = sdf.format(new Date());

        Users adduse = new Users(user.getUname(), user.getUsername(), user.getUpwd(), user.getUsex(), user.getEduno(),
                user.getPosno(), user.getUtel(), user.getUemail(), message);

        int f = adminBiz.AddUser(adduse);

        if (f > 0) {

            //文件上传

            System.out.println("filename:" + this.getUploadImageFileName());
            System.out.println("contentType:" + this.getUploadImageContentType());
            System.out.println("file:" + this.getUploadImage());


            String realPath = ServletActionContext.getServletContext().getRealPath("/upload");

            File file = new File(realPath);

            if (file.exists()) {
                file.mkdirs();
            }

            try {

                FileUtils.copyFile(uploadImage, new File(file, uploadImageFileName));
                addmsg = "addu";
            } catch (IOException e) {

                addmsg = "addfail";
                e.printStackTrace();
            }
        } else {
            addmsg = "addfail";
        }

        return addmsg;
    }


    @Override
    public void setSession(Map<String, Object> map) {

        //map 来源， 谁调用setSession
        // //加载struts.xml path -> LoginAction 实例化 后，调用setSession
        //  Map<String,Object> a = ActionContext.getContext().getSession();
        // setSession(a);

        //session 对象来源: map
        session = map;
    }

    //------------------------------get、set-----------------------------------
    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public List<Admin> getList() {
        return list;
    }

    public void setList(List<Admin> list) {
        this.list = list;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public Map<String, String> getRemap() {
        return remap;
    }

    public void setRemap(Map<String, String> remap) {
        this.remap = remap;
    }

    public Map<String, String> getRecheck() {
        return recheck;
    }

    public void setRecheck(Map<String, String> recheck) {
        this.recheck = recheck;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getSecurityCode() {
        return securityCode;
    }

    public void setSecurityCode(String securityCode) {
        this.securityCode = securityCode;
    }

    public File getUploadImage() {
        return uploadImage;
    }

    public void setUploadImage(File uploadImage) {
        this.uploadImage = uploadImage;
    }

    public String getUploadImageContentType() {
        return uploadImageContentType;
    }

    public void setUploadImageContentType(String uploadImageContentType) {
        this.uploadImageContentType = uploadImageContentType;
    }

    public String getUploadImageFileName() {
        return uploadImageFileName;
    }

    public void setUploadImageFileName(String uploadImageFileName) {
        this.uploadImageFileName = uploadImageFileName;
    }
}
