package com.soft.dao;

import com.soft.entity.Users;

import java.util.List;

public interface UserDao {

    //登录
    public Users UserLogin(Users user);

    //用户查询
//    public <T>List<T> finaUser(String btime,String endtime,String uname,int page);

    //检测用户名
    public Users CheckName(String uname);

    //添加用户
    public boolean AddUser(Users user);

    //审核通过
    public boolean ExamPass(int id);

    //审核失败
    public boolean ExamFail(int id);

    //启用
    public boolean Enable(int id);

    //禁用
    public boolean Prohibit(int id);
}
