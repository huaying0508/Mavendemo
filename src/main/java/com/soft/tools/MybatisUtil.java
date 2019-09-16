package com.soft.tools;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;


/**
 *
 * 功能描述:
 *
 * @param:
 * @return:
 * @auther: hua
 * @date: 2019/9/6 13:59
 */


public class MybatisUtil {

    private static SqlSessionFactory sf;
    private static String sqlurl = "SqlMapConfig.xml";

    static {
        Reader reader = null;
        try {
            reader = Resources.getResourceAsReader(sqlurl);
        } catch (IOException e) {
            e.printStackTrace();
        }
        SqlSessionFactoryBuilder sfb = new SqlSessionFactoryBuilder();
        sf = sfb.build(reader);
    }

    public static SqlSession getSession() {

        return sf.openSession(true);
    }



}
