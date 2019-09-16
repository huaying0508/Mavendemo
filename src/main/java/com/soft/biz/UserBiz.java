package com.soft.biz;

import com.soft.entity.Users;
import com.soft.entity.tbldoc;

import java.util.List;

public interface UserBiz {

    //用户登录
    public Users Login(String uname,String upwd);

    //文档上传
    public int DocUpload(tbldoc td);

    //文档列表修改状态
    public int UpdateStatus(int exno,int docno);

    //用户注册
    public int UserAdd(Users user);

    //文档列表查询
    public  List<tbldoc> findDocAll();


}
