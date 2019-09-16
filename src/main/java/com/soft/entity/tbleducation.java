package com.soft.entity;

public class tbleducation {

    private Integer eduno;
    private String eduname;

    public tbleducation(Integer eduno, String eduname) {
        this.eduno = eduno;
        this.eduname = eduname;
    }

    public tbleducation() {
    }

    public Integer getEduno() {
        return eduno;
    }

    public void setEduno(Integer eduno) {
        this.eduno = eduno;
    }

    public String getEduname() {
        return eduname;
    }

    public void setEduname(String eduname) {
        this.eduname = eduname;
    }
}

