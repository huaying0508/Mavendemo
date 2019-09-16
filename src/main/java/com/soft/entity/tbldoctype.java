package com.soft.entity;

public class tbldoctype {
    private Integer dtno;
    private String dtname;

    public tbldoctype(Integer dtno, String dtname) {
        this.dtno = dtno;
        this.dtname = dtname;
    }

    public tbldoctype() {
    }

    public Integer getDtno() {
        return dtno;
    }

    public void setDtno(Integer dtno) {
        this.dtno = dtno;
    }

    public String getDtname() {
        return dtname;
    }

    public void setDtname(String dtname) {
        this.dtname = dtname;
    }
}
