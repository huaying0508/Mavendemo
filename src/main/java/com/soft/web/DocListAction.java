package com.soft.web;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.biz.AdminBiz;
import com.soft.biz.AdminBizImpl;
import com.soft.biz.UserBiz;
import com.soft.biz.UserBizImpl;
import com.soft.entity.tbldoc;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class DocListAction extends ActionSupport implements SessionAware {

    @Resource
    private AdminBiz adminBiz ;
    @Resource
    private UserBiz userBiz ;
    private Map<String, Object> session = null;
    private List<tbldoc> doclist = null;

    //文档查询
    public String findByDoc() {
        String msg = "findfail";

        doclist = adminBiz.findByDoc(null, null, 0, null, null, 1);
        if (null != doclist) {
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("dlist", doclist);
            msg = "findtrue";
        }

        return msg;
    }

    //文档审核通过
    public String ExamPass() {
        String msg = "disexam";

        String id = ServletActionContext.getRequest().getParameter("docno");

        int num = userBiz.UpdateStatus(2, Integer.parseInt(id));

        if (num > 0) {
            msg = "exampass";
        } else {
            msg = "disexam";
        }

        return msg;
    }

    //文档审核不通过
    public String ExamFail() {
        String msg = "failexam";

        String id = ServletActionContext.getRequest().getParameter("docno");

        int num = userBiz.UpdateStatus(3, Integer.parseInt(id));

        if (num > 0) {
            msg = "examfail";

        } else {
            msg = "failexam";
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
}
