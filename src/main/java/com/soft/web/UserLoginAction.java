package com.soft.web;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.biz.UserBiz;

import com.soft.entity.Users;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserLoginAction extends ActionSupport implements SessionAware {

    private Map<String, String> reusermap = new HashMap<String, String>();
    @Resource
    private UserBiz userBiz ;
    private Map<String, Object> session = null;
    private Users user;
    private String securityCode;
    private String uname;


    //登录
    public String execute() {

        Users ulog = userBiz.Login(user.getUname(), user.getUpwd());

        String serverCode = (String) session.get("SESSION_SECURITY_CODE");

        session.put("uuname", ulog);

        if (null != ulog) {

            if (serverCode.equals(securityCode)) {

                reusermap.put("info", "success");

            } else {

                reusermap.put("info", "codefail");

            }
        } else {

            reusermap.put("info", "fail");
        }
        System.out.println(reusermap.get("info"));

        return "regson";

    }


    /**
     * 功能描述:
     *
     * @param:
     * @return: msg
     * @auther: hua
     * @date: 2019/9/6 15:38
     */
    public String UserAdd() {
        String msg = "addffail";

        //获取时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateMsg = sdf.format(new Date());

//        建立注册实体
        Users adduse = new Users(user.getUname(), user.getUsername(), user.getUpwd(), user.getUsex(), user.getEduno(),
                user.getPosno(), user.getUtel(), user.getUemail(), dateMsg);


        int num = userBiz.UserAdd(adduse);
        if (num > 0) {
            msg = "addppss";
        }

        return msg;
    }


    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }


    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
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

    public Map<String, String> getReusermap() {
        return reusermap;
    }

    public void setReusermap(Map<String, String> reusermap) {
        this.reusermap = reusermap;
    }


}
