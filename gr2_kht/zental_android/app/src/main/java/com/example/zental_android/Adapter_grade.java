package com.example.zental_android;


import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.zental_android.R;

import java.util.ArrayList;

public class Adapter_grade extends BaseAdapter {

    private ArrayList<modulegrade> arr = new ArrayList<modulegrade>();

    @Override
    public int getCount() {
        return arr.size();
    }

    @Override
    public modulegrade getItem(int position) {
        return arr.get(position);
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        Context context = parent.getContext();

        /* 'listview_custom' Layout을 inflate하여 convertView 참조 획득 */
        if (convertView == null) {


            LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = inflater.inflate(R.layout.unit_grade, parent, false);
        }

        /* 'listview_custom'에 정의된 위젯에 대한 참조 획득 */
        ImageView img = (ImageView) convertView.findViewById(R.id.gradeimg);
        TextView title = (TextView) convertView.findViewById(R.id.gradetitle);
        TextView content = (TextView) convertView.findViewById(R.id.gradebene);

        /* 각 리스트에 뿌려줄 아이템을 받아오는데 mMyItem 재활용 */
        modulegrade f1 = getItem(position);
        System.out.println(position + "getView실행");
        /* 각 위젯에 세팅된 아이템을 뿌려준다 */
        img.setImageDrawable(f1.getGradeimg());
        title.setText(f1.getGradetitle());
        content.setText(f1.getGradebene());

        /* (위젯에 대한 이벤트리스너를 지정하고 싶다면 여기에 작성하면된다..)  */


        return convertView;
    }

    /* 아이템 데이터 추가를 위한 함수. 자신이 원하는대로 작성 */
    public void addItem(Drawable gradeimg, String gradetitle, String gradebene) {

        System.out.println("add Item실행");
        modulegrade f1 = new modulegrade(gradeimg, gradetitle, gradebene);

        /* mItems에 MyItem을 추가한다. */
        arr.add(f1);
    }
}