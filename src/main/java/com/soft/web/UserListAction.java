package com.soft.web;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.biz.AdminBiz;
import com.soft.biz.AdminBizImpl;
import com.soft.entity.FindData;
import com.soft.entity.Users;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class UserListAction extends ActionSupport implements SessionAware {

    @Resource
    private AdminBiz adminBiz;
    private FindData find;
    private List<Users> userlist;
    private int page = 1;
    private int userno;
    private Users user;
    private Map<String, Object> session = null;
    private Map<String, String> addmap = new HashMap<String, String>();


    //查找用户
    public String findByUser() {
        String msg = "fail";

        userlist = adminBiz.findByUser(null, null, null, page);

        if (null != userlist) {

            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("ulist", userlist);
            msg = "findok";
        }

        return msg;

    }

    //审核通过
    public String ExamPass() {
        String exmsg = "noexam";

        String id = ServletActionContext.getRequest().getParameter("userno");

        int num = adminBiz.UpdateStatus(2,Integer.parseInt(id));

        if (num>0) {
            exmsg = "examine";
        } else {
            exmsg = "noexam";
        }

        return exmsg;
    }

    //审核失败
    public String ExamFail() {

        String msg = "examfail";

        String id = ServletActionContext.getRequest().getParameter("userno");

        int num = adminBiz.UpdateStatus(3,Integer.parseInt(id));
        if (num>0) {
            msg = "exam";
        } else {
            msg = "examfail";
        }

        return msg;
    }

    //启用
    public String Enable() {
        String msg = "disable";

        String id = ServletActionContext.getRequest().getParameter("userno");

        int num = adminBiz.UpdateStatus(2,Integer.parseInt(id));
        if (num>0) {
            msg = "enableu";
        } else {
            msg = "disable";
        }

        return msg;
    }

    //禁用

    public String Prohibit() {
        String msg = "disprohi";

        String id = ServletActionContext.getRequest().getParameter("userno");

        int num = adminBiz.UpdateStatus(4,Integer.parseInt(id));
        if (num>0) {
            msg = "Prohibitu";
        } else {
            msg = "disprohi";
        }

        return msg;
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


    public int getUserno() {
        return userno;
    }

    public void setUserno(int userno) {
        this.userno = userno;
    }

    public FindData getFind() {
        return find;
    }

    public void setFind(FindData find) {
        this.find = find;
    }

    public List<Users> getUserlist() {
        return userlist;
    }

    public void setUserlist(List<Users> userlist) {
        this.userlist = userlist;
    }

    public Map<String, String> getAddmap() {
        return addmap;
    }

    public void setAddmap(Map<String, String> addmap) {
        this.addmap = addmap;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

}
