package com.soft.mapper;

import com.soft.entity.tbldoc;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DocMapper {

    //增加
    public int addDoc(tbldoc doc);


    //查询

    public List<tbldoc> findDocAll();



    //修改状态
    public int updateDocStatus(@Param("exno")int exno,@Param("docno")int docno);




}
