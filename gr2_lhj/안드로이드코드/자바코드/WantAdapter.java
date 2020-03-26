package com.cookandroid.zental;

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

import androidx.core.content.ContextCompat;

import java.util.ArrayList;

public class WantAdapter extends BaseAdapter {

    private ArrayList<Want> arr = new ArrayList<Want>();

    @Override
    public int getCount() {
        return arr.size();
    }

    @Override
    public Want getItem(int position) {
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
            convertView = inflater.inflate(R.layout.want_list_view, parent, false);
        }

        /* 'listview_custom'에 정의된 위젯에 대한 참조 획득 */

        ImageView img = (ImageView)convertView.findViewById(R.id.img1) ;
        TextView price = (TextView)convertView.findViewById(R.id.price1);
        TextView content = (TextView)convertView.findViewById(R.id.content1);

        /* 각 리스트에 뿌려줄 아이템을 받아오는데 mMyItem 재활용 */
        Want w1 = getItem(position);
        System.out.println(position+"getView실행");
        /* 각 위젯에 세팅된 아이템을 뿌려준다 */
        img.setImageDrawable(w1.getImg());
        price.setText(w1.getPrice());
        content.setText(w1.getTitle());


        /* (위젯에 대한 이벤트리스너를 지정하고 싶다면 여기에 작성하면된다..)  */


        return convertView;
    }

    /* 아이템 데이터 추가를 위한 함수. 자신이 원하는대로 작성 */
    public void addItem(Drawable img, String price, String content) {

        Want w1 = new Want(img,price, content);

        /* mItems에 MyItem을 추가한다. */
        arr.add(w1);
    }
}
