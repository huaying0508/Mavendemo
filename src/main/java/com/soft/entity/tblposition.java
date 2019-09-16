package com.soft.entity;

public class tblposition {

    private Integer posno;
    private String posname;

    public tblposition(Integer posno, String posname) {
        this.posno = posno;
        this.posname = posname;
    }

    public tblposition() {
    }

    public Integer getPosno() {
        return posno;
    }

    public void setPosno(Integer posno) {
        this.posno = posno;
    }

    public String getPosname() {
        return posname;
    }

    public void setPosname(String posname) {
        this.posname = posname;
    }
}
