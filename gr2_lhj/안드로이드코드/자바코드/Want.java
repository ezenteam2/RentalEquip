package com.cookandroid.zental;

import android.graphics.drawable.Drawable;

public class Want {
    private Drawable img;
    private String price;
    private String title;

    public Want(Drawable img, String price, String title) {
        this.img = img;
        this.price = price;
        this.title = title;
    }

    public Drawable getImg() {
        return img;
    }

    public void setImg(Drawable img) {
        this.img = img;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
