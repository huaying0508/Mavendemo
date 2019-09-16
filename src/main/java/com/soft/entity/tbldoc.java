package com.soft.entity;

public class tbldoc {

    private Integer docno;
    private Integer userno;
    private String docname;
    private String docdetail;
    private String docpath;
    private Integer dintegral;
    private String docdate;
    private Integer downnum;
    private Integer dtno;
    private Integer exno;

    private Users user;
    private tbldoctype doctype;
    private tblexamine exam;





    public tbldoc(Integer docno, Integer userno, String docname, String docdetail, String docpath, Integer dintegral, String docdate, Integer downnum, Integer dtno, Integer exno) {
        this.docno = docno;
        this.userno = userno;
        this.docname = docname;
        this.docdetail = docdetail;
        this.docpath = docpath;
        this.dintegral = dintegral;
        this.docdate = docdate;
        this.downnum = downnum;
        this.dtno = dtno;
        this.exno = exno;
    }

    public tbldoc(Integer userno, String docname, String docdetail, String docpath, Integer dintegral, String docdate, Integer dtno) {
        this.userno = userno;
        this.docname = docname;
        this.docdetail = docdetail;
        this.docpath = docpath;
        this.dintegral = dintegral;
        this.docdate = docdate;
        this.dtno = dtno;

    }

    public tbldoc() {
    }


    public Integer getDocno() {
        return docno;
    }

    public void setDocno(Integer docno) {
        this.docno = docno;
    }

    public int getUserno() {
        return userno;
    }

    public void setUserno(Integer userno) {
        this.userno = userno;
    }

    public String getDocname() {
        return docname;
    }

    public void setDocname(String docname) {
        this.docname = docname;
    }

    public String getDocdetail() {
        return docdetail;
    }

    public void setDocdetail(String docdetail) {
        this.docdetail = docdetail;
    }

    public String getDocpath() {
        return docpath;
    }

    public void setDocpath(String docpath) {
        this.docpath = docpath;
    }

    public Integer getDintegral() {
        return dintegral;
    }

    public void setDintegral(Integer dintegral) {
        this.dintegral = dintegral;
    }

    public String getDocdate() {
        return docdate;
    }

    public void setDocdate(String docdate) {
        this.docdate = docdate;
    }

    public Integer getDownnum() {
        return downnum;
    }

    public void setDownnum(Integer downnum) {
        this.downnum = downnum;
    }

    public Integer getDtno() {
        return dtno;
    }

    public void setDtno(Integer dtno) {
        this.dtno = dtno;
    }

    public Integer getExno() {
        return exno;
    }

    public void setExno(Integer exno) {
        this.exno = exno;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public tbldoctype getDoctype() {
        return doctype;
    }

    public void setDoctype(tbldoctype doctype) {
        this.doctype = doctype;
    }

    public tblexamine getExam() {
        return exam;
    }

    public void setExam(tblexamine exam) {
        this.exam = exam;
    }
}
