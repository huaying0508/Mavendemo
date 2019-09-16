package com.soft.biz;

import com.soft.entity.Users;
import com.soft.entity.tbldoc;
import com.soft.mapper.UserListMapper;
import com.soft.mapper.DocMapper;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userBiz")
public class UserBizImpl implements UserBiz {

    @Resource
    private DocMapper docMapper;
    @Resource
    private UserListMapper userListMapper;

    //---------------------用户登录--------------------------------
    @Override
    public Users Login(String uname, String upwd) {

        return userListMapper.UserLogin(uname, upwd);
    }

    //---------------------文档上传-------------------------------
    @Override
    public int DocUpload(tbldoc td) {

        return docMapper.addDoc(td);
    }

    //---------------------文档列表修改状态---------------------
    public int UpdateStatus(int exno, int docno) {

        return docMapper.updateDocStatus(exno, docno);
    }

    //---------------------用户注册---------------------
    public int UserAdd(Users user) {

        return userListMapper.addUser(user);
    }


    //文档列表查询
    public List<tbldoc> findDocAll(){

        return docMapper.findDocAll();
    }


}
