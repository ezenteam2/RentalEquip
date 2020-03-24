package com.example.zental;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;

public class EmoneyAdapter extends BaseAdapter {
Context mContext= null;
LayoutInflater inflater = null;
ArrayList<emoneyList> emoneylist;

    public EmoneyAdapter(Context context, ArrayList<emoneyList> data){
        mContext=context;
        emoneylist = data;
        inflater =LayoutInflater.from(mContext);
    }

    public int getCount(){
        return emoneylist.size();
    }

    public long getItemId(int position){
        return position;
    }

    public emoneyList getItem(int position){
        return emoneylist.get(position);
    }
    public View getView(int position, View converView, ViewGroup parent){
        View view = inflater.inflate(R.layout.emoneylist, null);

        TextView dateText = (TextView)view.findViewById(R.id.TextViewDate);
        TextView cateText = (TextView)view.findViewById(R.id.emo_cate_TextView);
        TextView emoText = (TextView)view.findViewById(R.id.Emoney_TextView);

        dateText.setText(emoneylist.get(position).getDate());
        cateText.setText(emoneylist.get(position).getEmo_cate());
        emoText.setText(emoneylist.get(position).getEmoney());

       return view;

    }
}
