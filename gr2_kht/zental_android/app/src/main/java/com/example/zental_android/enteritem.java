package com.example.zental_android;

import android.graphics.drawable.Drawable;

public class enteritem {
    private Drawable img;
    private String title;
    private String price;

    public enteritem(Drawable img, String title, String price) {
        this.img = img;
        this.title = title;
        this.price = price;
    }

    public Drawable getImg() {
        return img;
    }

    public void setImg(Drawable img) {
        this.img = img;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
