package com.cookandroid.zental;

import android.graphics.drawable.Drawable;

public class Faq {
    private Drawable img;
    private String title;
    private String content;

    public Faq(Drawable img, String title, String content){
        this.img=img;
        this.title=title;
        this.content=content;
    }

    public Drawable getImg() {
        return img;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }
}
