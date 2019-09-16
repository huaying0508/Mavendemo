package com.soft.entity;

public class tblstate {
    private Integer stno;
    private String stname;

    public tblstate(Integer stno, String stname) {
        this.stno = stno;
        this.stname = stname;
    }

    public tblstate() {
    }

    public Integer getStno() {
        return stno;
    }

    public void setStno(Integer stno) {
        this.stno = stno;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname;
    }
}
