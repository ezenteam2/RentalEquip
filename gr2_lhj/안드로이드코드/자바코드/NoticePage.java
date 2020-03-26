package com.cookandroid.zental;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

public class NoticePage extends AppCompatActivity {

    ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.notice1);

        mListView = (ListView)findViewById(R.id.list1);

        dataSetting();
        TextView b1=(TextView) findViewById(R.id.button1);
        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                movePage();

            }
        });

    }

    private void dataSetting() {
        NoticeAdapter mMyAdapter = new NoticeAdapter();


        mMyAdapter.addItem("내폰팔기 서비스 종료 안내", "2020/03/23");
        mMyAdapter.addItem("[공지]서비스 오류 안내", "2020/02/13");
        mMyAdapter.addItem("번개페이 이용약관 변경 건 공지", "2020/02/11");
        mMyAdapter.addItem("[공지]설 연휴 택배집화일정", "2020/01/21");
        mMyAdapter.addItem("번개카 서비스 종료 안내", "2019/12/31");
        mMyAdapter.addItem("번개장터 개인정보처리방침 개정 안내", "2019/12/06");
        mMyAdapter.addItem("홈픽 이용 일시 중단 안내", "2019/11/25");
        mMyAdapter.addItem("[공지]추석 연휴 택배집화일정", "2019/09/09");
        mMyAdapter.addItem("[공지]CU편의점택배 시스템 점검 안내의 건", "2019/07/19");
        mMyAdapter.addItem("방문택배 *홈픽* 서비스 오픈&유의사항 안내", "2019/07/10");
        mMyAdapter.addItem("번개페이 이용약관 변경 건 공지", "2020/01/20");
        mMyAdapter.addItem("번개송금 이용약관 변경 건 공지", "2020/01/20");


        mListView.setAdapter(mMyAdapter);
    }
    private void movePage(){
        Intent intent=new Intent(this, FaqPage.class);
        startActivity(intent);
    }
}
