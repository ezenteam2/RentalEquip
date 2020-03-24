package com.example.zental_android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.os.Bundle;
import android.widget.ListView;

import java.util.List;

public class Activity_coupon  extends AppCompatActivity {


    ListView couponListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_m_ht_coupon);

        couponListView = (ListView)findViewById(R.id.listviewcoupon);


        dataSettingCoupon();
   }



    private void dataSettingCoupon(){
        Adapter_coupon adapterC = new Adapter_coupon();


        adapterC.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem1),"\n" +
                "생일",
                "10000원 2020년 4월 3일까지");
        adapterC.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem2),"\n" +
                "친구 추천",
                "1000원 2020년 3월 29일까지");
        adapterC.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem3),"\n" +
                "친구 추천",
                "1000원 2020년 4월 2일까지");

        couponListView.setAdapter(adapterC);
    }



}
