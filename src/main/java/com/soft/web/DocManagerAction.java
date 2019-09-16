package com.soft.web;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.biz.UserBiz;
import com.soft.entity.tbldoc;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class DocManagerAction extends ActionSupport implements SessionAware {

    private Map<String, Object> session = null;
    private List<tbldoc> list = null;
    @Resource
    private UserBiz userBiz;

    //查询列表
    public String findDoc() {
        String msg = "findfail";

        list = userBiz.findDocAll();
        if (null != list) {
            HttpSession sess = ServletActionContext.getRequest().getSession();
            sess.setAttribute("ddlist", list);
            msg = "findpass";
        }

        return msg;
    }


    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}
