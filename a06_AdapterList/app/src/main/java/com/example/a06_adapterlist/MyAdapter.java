package com.example.a06_adapterlist;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

/*
# 현재 선언된 MyAdapter 클래스의 주요 기능
    1. 단위 핵심 데이터를 화면 item.xml과 연결, 전체 데이터가 단위 화면데이터를 list한 효과를 나타나게 해줌
    2. 전체 데이터가

 */


public class MyAdapter extends BaseAdapter {
    private ArrayList<Item> items;
    private LayoutInflater inflater;

    public MyAdapter(ArrayList<Item> items, LayoutInflater inflater) {
        this.items=items;
        this.inflater=inflater;
    }

    public MyAdapter(ArrayList<Item> items) {
        this.items = items;
    }

    @Override
    public int getCount() {
        return items.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        if(convertView==null){
            convertView = inflater.inflate(R.layout.item,parent,false);
        // inflater를 통한 화면 구성
        // item.xml에서 전달 된 내용을 사용하기 위함
            // 객체화 하여 사용

            ImageView img = convertView.findViewById(R.id.img);
            TextView txt = convertView.findViewById(R.id.txt);
            // 이미지와 text 가져오기

            img.setImageResource(items.get(position).getImg());
            // 이미지 데이터에서 maaping

            txt.setText(items.get(position).getName());
            // 글자를 데이터에서 mapping
        }



        return null;
    // View단위로 화면과 데이터의 연결 처리
    // 1. inflater : xml의 데이터를 화면으로 전환하여 객체화 처리
    // 2. item.xml에 선언된 화면내용을 객체화하여 처리할 때, inflater 객체가 활용됨
    //      getLayoutInflater()를 이용하여 처리
    }

}
