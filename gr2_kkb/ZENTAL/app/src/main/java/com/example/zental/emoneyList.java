package com.example.zental;

public class emoneyList {
    private String date;
    private String emo_cate;
    private String Emoney;

    public emoneyList(String date, String emo_cate, String Emoney){
        this.date = date;
        this.emo_cate = emo_cate;
        this.Emoney = Emoney;
    }

    public String getDate(){
        return date;
    }

    public String getEmo_cate(){
        return emo_cate;
    }

    public String getEmoney(){
        return Emoney;
    }
}
