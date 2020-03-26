package com.cookandroid.zental;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;

public class WantPage extends AppCompatActivity {

    ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.want1);

        mListView = (ListView)findViewById(R.id.list1);

        dataSetting();
    }

    private void dataSetting(){
        WantAdapter mMyAdapter = new WantAdapter();


        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod1),"4,000원", "마스크 빌립니다 깨끗한 걸로 부탁드려요");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod2),"5,000원", "검정색 신발 빌려요 하루 5000원");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod3),"4,500원", "가방 빌려봅니당 4가지 중에 하나로 ");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod4),"5,500원", "운동화 하루만 빌려주실분 흰색으로");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod5),"6,000원", "노트북 빌려주세요");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod6),"7,000원", "검정 신발 빌려주세요");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod7),"12,000원", "옷 빌려주세요");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod8),"8,000원", "가방 빌려주세요");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod9),"7,000원", "휴지 빌려봅니다");
        mMyAdapter.addItem(ContextCompat.getDrawable(getApplicationContext(),R.drawable.hj_prod10),"6,000원", "백팩 빌려요");




        mListView.setAdapter(mMyAdapter);
    }
}
