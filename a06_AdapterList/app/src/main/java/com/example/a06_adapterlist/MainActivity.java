package com.example.a06_adapterlist;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
/*
    1. 핵심 데이터 선언 (배열형) VO객체 선언후 ArrayList 선언
    2. list형태의 데이터 할당 - 물건이미지, drawable에 할당
    3. list형태의 데이터에 개별 데이터와 mapping될 수 있는 사용자 정의 adapter 선언
        1) 기본 객체인 BaseAdapter를 상속하여 처리
        2) 재정의 메서드에 대하여 처리 getcount() : arraylist의 데이터로 할당
        3) 단위 데이터를 item.xml로 선언한 화면과 연결
            View getView()를 통해서 처리 - inflater를 통해 처리
    4. 선언한 listView에 할당 처리

 */

    private ArrayList<Item> items;
    // 1. 전역변수로 처리할 핵심 데이터 선언



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.listviewact);

        items = new ArrayList<Item>();
        items.add(new Item(R.mipmap.ic_launcher,"냉장고"));
        items.add(new Item(R.mipmap.ic_launcher,"세탁기"));
        items.add(new Item(R.mipmap.ic_launcher,"에어컨"));
        items.add(new Item(R.mipmap.ic_launcher,"컴퓨터"));
        items.add(new Item(R.mipmap.ic_launcher,"핸드폰"));
        // 2. ArrayList 데이터 할당


        MyAdapter adapter = new MyAdapter(items, getLayoutInflater());
        // 선언된 Adapter와 list의 연결

        ListView list = findViewById(R.id.list);
        list.setAdapter(adapter);
    }
}
