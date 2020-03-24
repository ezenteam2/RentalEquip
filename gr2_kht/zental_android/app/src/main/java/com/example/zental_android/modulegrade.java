package com.example.zental_android;

import android.graphics.drawable.Drawable;

public class modulegrade {

    private Drawable gradeimg;
    private String gradetitle;
    private String gradebene;

    public modulegrade(Drawable gradeimg, String gradetitle, String gradebene) {
        this.gradeimg = gradeimg;
        this.gradetitle = gradetitle;
        this.gradebene = gradebene;
    }

    public Drawable getGradeimg() {
        return gradeimg;
    }

    public void setGradeimg(Drawable gradeimg) {
        this.gradeimg = gradeimg;
    }

    public String getGradetitle() {
        return gradetitle;
    }

    public void setGradetitle(String gradetitle) {
        this.gradetitle = gradetitle;
    }

    public String getGradebene() {
        return gradebene;
    }

    public void setGradebene(String gradebene) {
        this.gradebene = gradebene;
    }
}
