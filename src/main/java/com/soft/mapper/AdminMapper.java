package com.soft.mapper;

import com.soft.entity.tbladmin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminMapper {

    public tbladmin AdminLogin(@Param("adname")String adname,@Param("adpwd")String adpwd);


}
