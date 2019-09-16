package com.soft.biz;

import com.soft.entity.*;
import com.soft.mapper.UserListMapper;
import com.soft.mapper.AdminMapper;
import com.soft.mapper.DocMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("adminBiz")
public class AdminBizImpl implements AdminBiz {


    @Resource
    private UserListMapper userListMapper;
    @Resource
    private AdminMapper adminMapper;
    @Resource
    private DocMapper docMapper;


    //--------------------------------登录------------------------------
    @Override
    public tbladmin Login(String adname, String adpwd) {

        return adminMapper.AdminLogin(adname, adpwd);
    }

    //-----------------------------用户查询------------------------------
    @Override
    public List<Users> findByUser(String btime, String endtime, String uname, int page) {

        return userListMapper.findUserAll(page);
    }

    //-----------------------------文档查询------------------------------
    @Override
    public List<tbldoc> findByDoc(String docname, String username, int docType, String btime, String endtime, int page) {

        return docMapper.findDocAll();
    }


    //---------------------------------检测用户名------------------------------
    @Override
    public Users CheckName(String uname) {

        return userListMapper.checkName(uname);
    }

    //------------------------------增加用户-------------------------------
    @Override
    public int AddUser(Users user) {

        return userListMapper.addUser(user);
    }


    //------------------------------用户列表修改状态------------------------------
    @Override
    public int UpdateStatus(int stno, int userid) {

        return userListMapper.updateStatus(stno, userid);
    }


}
