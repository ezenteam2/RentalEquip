package com.example.zental_android;

public class modulepoint {
    private String pointdate;
    private String pointdetail;
    private String pointamount;

    public modulepoint(String pointdate, String pointdetail, String pointamount) {
        this.pointdate = pointdate;
        this.pointdetail = pointdetail;
        this.pointamount = pointamount;
    }

    public String getPointdate() {
        return pointdate;
    }

    public void setPointdate(String pointdate) {
        this.pointdate = pointdate;
    }

    public String getPointdetail() {
        return pointdetail;
    }

    public void setPointdetail(String pointdetail) {
        this.pointdetail = pointdetail;
    }

    public String getPointamount() {
        return pointamount;
    }

    public void setPointamount(String pointamount) {
        this.pointamount = pointamount;
    }
}
