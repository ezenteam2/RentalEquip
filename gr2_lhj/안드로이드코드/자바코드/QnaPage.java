package com.cookandroid.zental;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

public class QnaPage extends AppCompatActivity {

    ListView mListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.qna1);

        mListView = (ListView)findViewById(R.id.list1);

        dataSetting();
    }

    private void dataSetting(){
        QnaAdapter adapter = new QnaAdapter();


        adapter.addItem("팔로우숫자가 갑자기 줄었어요");
        adapter.addItem("전문 상점과 개인 상점의 차이는 무엇인가요?");
        adapter.addItem("인기상품이 되려면 어떻게 하나요?");
        adapter.addItem("상품 등록은 어떻게 하는 건가요?");
        adapter.addItem("상품이 왜 판매완료/삭제 되었나요?");
        adapter.addItem("상점의 웹사이트 주소는 어떻게 만드나요?");
        adapter.addItem("찜은 무엇이며 어떻게 하는 건가요?");
        adapter.addItem("전문상점으로 전환하고 싶어요");


        mListView.setAdapter(adapter);
    }
}
