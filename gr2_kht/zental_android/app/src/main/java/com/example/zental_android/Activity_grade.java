package com.example.zental_android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;

import java.util.List;

public class Activity_grade extends AppCompatActivity {

    ListView gradeListView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_m_ht_grade);

        gradeListView = (ListView)findViewById(R.id.gradelistview);


        dataSettingGrade();

    }




    private void dataSettingGrade(){
        Adapter_grade adapterG = new Adapter_grade();


        adapterG.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.grade_normal),"\n" +
                        "일반",
                "안녕하세요");
        adapterG.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.grade_silver),"\n" +
                        "실버",
                "매월 1000원 쿠폰 지급");
        adapterG.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.grade_gold),"\n" +
                        "골드",
                "매월 2000원 쿠폰 지급");
        adapterG.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.grade_vip),"\n" +
                        "VIP",
                "매월 5000원 쿠폰 지급");
        adapterG.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.grade_vvip),"\n" +
                        "VVIP",
                "매월 6000원 쿠폰 지급");

        gradeListView.setAdapter(adapterG);
    }


}
