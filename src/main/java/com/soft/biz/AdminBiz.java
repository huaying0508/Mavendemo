package com.soft.biz;

import com.soft.entity.*;

import java.util.List;

public interface AdminBiz {

    //登录
    public tbladmin Login(String adname, String adpwd);

    //查询前台用户

    public List<Users> findByUser(String btime, String endtime, String uname, int page);

    //查询文档列表
    public List<tbldoc> findByDoc(String docname, String username, int docType, String btime, String endtime, int page);

    //检测用户名
    public Users CheckName(String uname);

    //增加用户
    public int AddUser(Users user);

    //审核通过
    public int UpdateStatus(int stno,int userid);


}
