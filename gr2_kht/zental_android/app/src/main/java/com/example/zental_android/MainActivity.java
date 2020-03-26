package com.example.zental_android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;

import java.util.List;

public class MainActivity extends AppCompatActivity {

    ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_m_ht_mainenter);

        mListView = (ListView)findViewById(R.id.list1);

        dataSetting();


        Intent intent = new Intent(this, Activity_coupon.class);
        startActivity(intent);
    }

    private void dataSetting(){
        Adapter0 adapter = new Adapter0();

        adapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem1),"\n" +
                "꼼데 가르송 티셔츠",
                "7000원 3일");
        adapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem2),"\n" +
                "iPadPro",
                "10000원 7일");
        adapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem3),"\n" +
                "백현 포스터",
                "3000원 10일");
        adapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem4),"\n" +
                "MTB 자전거",
                "50000원 7일");
        adapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.rentalitem5),"\n" +
                "전자 피아노",
                "10000원 1일");

        mListView.setAdapter(adapter);
    }


}