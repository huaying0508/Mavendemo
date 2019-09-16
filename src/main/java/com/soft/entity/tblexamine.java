package com.soft.entity;

public class tblexamine {
    private Integer exno;
    private String exname;

    public Integer getExno() {
        return exno;
    }

    public void setExno(Integer exno) {
        this.exno = exno;
    }

    public String getExname() {
        return exname;
    }

    public void setExname(String exname) {
        this.exname = exname;
    }

    public tblexamine(Integer exno, String exname) {
        this.exno = exno;
        this.exname = exname;
    }

    public tblexamine() {

    }
}
