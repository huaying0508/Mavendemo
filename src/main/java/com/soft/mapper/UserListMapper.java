package com.soft.mapper;

import com.soft.entity.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserListMapper {

    //审核通过,审核失败,启用，禁用
    public int updateStatus(@Param("stno") int stno, @Param("userno") int userno);

    //增加用户
    public int addUser(Users users);

    //检测用户名
    public Users checkName(String uname);

    //用户列表数据查询
    public List<Users> findUserAll(Integer page);

    //登录
    public Users UserLogin(@Param("uname") String uname, @Param("upwd") String upwd);


}
