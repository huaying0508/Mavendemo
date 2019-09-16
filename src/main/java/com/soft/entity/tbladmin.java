package com.soft.entity;

public class tbladmin {

    private int adno;
    private String adname;
    private String adpwd;

    public tbladmin() {

    }

    public tbladmin(String adname, String adpwd) {
        this.adname = adname;
        this.adpwd = adpwd;
    }

    public int getAdno() {
        return adno;
    }

    public void setAdno(int adno) {
        this.adno = adno;
    }

    public String getAdname() {
        return adname;
    }

    public void setAdname(String adname) {
        this.adname = adname;
    }

    public String getAdpwd() {
        return adpwd;
    }

    public void setAdpwd(String adpwd) {
        this.adpwd = adpwd;
    }
}
