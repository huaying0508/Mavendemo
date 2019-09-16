package com.soft.entity;

public class Users {

    private Integer userno;
    private String uname;
    private String username;
    private String upwd;
    private String usex;
    private Integer eduno;
    private Integer posno;
    private Long utel;
    private String uemail;
    private String uresdate;
    private Integer stno;
    private Integer num;
    private Integer intecont;
    private Integer downnum;

    private tbleducation edu;
    private tblposition pos;
    private tblstate status;


    public Users(Integer userno, String uname, String username, String upwd, String usex, Integer eduno, Integer posno, Long utel, String uemail, String uresdate, Integer stno, Integer num, Integer intecont, Integer downnum, tbleducation edu, tblposition pos, tblstate status) {
        this.userno = userno;
        this.uname = uname;
        this.username = username;
        this.upwd = upwd;
        this.usex = usex;
        this.eduno = eduno;
        this.posno = posno;
        this.utel = utel;
        this.uemail = uemail;
        this.uresdate = uresdate;
        this.stno = stno;
        this.num = num;
        this.intecont = intecont;
        this.downnum = downnum;
        this.edu = edu;
        this.pos = pos;
        this.status = status;
    }

    public Users(Integer userno, String uname, String username, String upwd, String usex, Integer eduno, Integer posno, Long utel, String uemail, String uresdate, Integer stno, Integer intecont) {
        this.userno = userno;
        this.uname = uname;
        this.username = username;
        this.upwd = upwd;
        this.usex = usex;
        this.eduno = eduno;
        this.posno = posno;
        this.utel = utel;
        this.uemail = uemail;
        this.uresdate = uresdate;
        this.stno = stno;
        this.intecont = intecont;
    }

    public Users(String uname, String upwd) {
        this.uname = uname;
        this.upwd = upwd;
    }

    public Users(String uname, String username, String upwd, String usex, Integer eduno, Integer posno, Long utel, String uemail, String uresdate) {
        this.uname = uname;
        this.username = username;
        this.upwd = upwd;
        this.usex = usex;
        this.eduno = eduno;
        this.posno = posno;
        this.utel = utel;
        this.uemail = uemail;
        this.uresdate = uresdate;
    }

    public Users() {

    }


    public Integer getUserno() {
        return userno;
    }

    public void setUserno(Integer userno) {
        this.userno = userno;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public Integer getEduno() {
        return eduno;
    }

    public void setEduno(Integer eduno) {
        this.eduno = eduno;
    }

    public Integer getPosno() {
        return posno;
    }

    public void setPosno(Integer posno) {
        this.posno = posno;
    }

    public Long getUtel() {
        return utel;
    }

    public void setUtel(Long utel) {
        this.utel = utel;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUresdate() {
        return uresdate;
    }

    public void setUresdate(String uresdate) {
        this.uresdate = uresdate;
    }

    public Integer getStno() {
        return stno;
    }

    public void setStno(Integer stno) {
        this.stno = stno;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getIntecont() {
        return intecont;
    }

    public void setIntecont(Integer intecont) {
        this.intecont = intecont;
    }

    public tbleducation getEdu() {
        return edu;
    }

    public void setEdu(tbleducation edu) {
        this.edu = edu;
    }

    public tblposition getPos() {
        return pos;
    }

    public void setPos(tblposition pos) {
        this.pos = pos;
    }

    public tblstate getStatus() {
        return status;
    }

    public void setStatus(tblstate status) {
        this.status = status;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getDownnum() {
        return downnum;
    }

    public void setDownnum(Integer downnum) {
        this.downnum = downnum;
    }
}




