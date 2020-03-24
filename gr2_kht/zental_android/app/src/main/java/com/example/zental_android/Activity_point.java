package com.example.zental_android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;

import java.util.List;

public class Activity_point  extends AppCompatActivity {

     ListView pointListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_m_ht_point);

        pointListView = (ListView)findViewById(R.id.pointlistview);

        dataSettingPoint();
    }

    private void dataSettingPoint(){
        Adapter_point adapter = new Adapter_point();

        adapter.addItem("2020-02-03",
                "상품 렌탈",
                "1000pt");
        adapter.addItem("2020-03-02",
                "상품 렌탈",
                "500pt");
        adapter.addItem("2020-03-03",
                "상품 렌탈",
                "700pt");
        adapter.addItem("2020-03-03",
                 "상품 렌탈",
                "350pt");
        adapter.addItem("2020-03-05",
                 "상품 렌탈",
                "1000pt");

        pointListView.setAdapter(adapter);
    }


}
