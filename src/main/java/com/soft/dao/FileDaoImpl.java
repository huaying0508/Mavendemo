package com.soft.dao;

import com.soft.tools.DBHelper;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class FileDaoImpl implements FileDao {

//    private List<Documents> list = null;
    private QueryRunner qr = null;
    private String sql = null;
    private boolean flag = false;


//    @Override
//    public List<Documents> findByDoc(String docname, String username, int docType, String btime, String endtime, int page) {
//
//        try {
//            qr = DBHelper.getQueryRunner();
//
//            int pageno = (page - 1) * 5;// 从第几条开始
//            int currpage = 5 * page + 1;// 不超过第几条
//
//            sql = "select td.*,tu.username,tdt.dtname from tbldoc td,tbluser tu,tbldoctype tdt \n" +
//                    "where td.userno=tu.userno and td.dtno=tdt.dtno ";
//
//            if (null != docname) {
//                if (0 < docname.length()) {
//                    sql += " and td.docname like '%" + docname + "%'";
//                }
//            }
//
//            if (null != username) {
//                if (0 < username.length()) {
//                    sql += " and tu.username like '%" + username + "%'";
//                }
//            }
//
//            if (null != btime) {
//                if (0 < btime.length()) {
//                    sql += " and td.docdate between '" + btime + "'";
//                }
//            }
//
//
//            if (null != endtime) {
//                if (0 < endtime.length()) {
//                    sql += " and '" + endtime + "'";
//                }
//            }
//
//            if (0 != docType) {
//                sql += " and td.dtname =" + docType + "";
//            }
//
//
//            sql += " limit " + pageno + "," + currpage + "";
//
//
//            list = qr.query(sql, new BeanListHandler<>(Documents.class));
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//
//        return list;
//    }
}
