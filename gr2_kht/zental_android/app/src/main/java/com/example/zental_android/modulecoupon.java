package com.example.zental_android;

import android.graphics.drawable.Drawable;

public class modulecoupon {

    private Drawable couponimg;
    private String coupontitle;
    private String coupondur;

    public modulecoupon(Drawable couponimg, String coupontitle, String coupondur) {
        this.couponimg = couponimg;
        this.coupontitle = coupontitle;
        this.coupondur = coupondur;
    }

    public Drawable getCouponimg() {
        return couponimg;
    }

    public void setCouponimg(Drawable couponimg) {
        this.couponimg = couponimg;
    }

    public String getCoupontitle() {
        return coupontitle;
    }

    public void setCoupontitle(String coupontitle) {
        this.coupontitle = coupontitle;
    }

    public String getCoupondur() {
        return coupondur;
    }

    public void setCoupondur(String coupondur) {
        this.coupondur = coupondur;
    }
}
