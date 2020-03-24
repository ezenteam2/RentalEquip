package com.example.zental;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.List;

public class emoneyDetail extends AppCompatActivity {

    ArrayList<emoneyList> emolist;
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.emoneydetail);

        Button moveCarge2 = (Button)findViewById(R.id.moveCharge2);
        moveCarge2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(emoneyDetail.this, emoneyCharge.class);
                startActivity(intent);
            }
        });

        Button moveWithraw2 = (Button)findViewById(R.id.moveEmoneyWithraw2);
        moveWithraw2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(emoneyDetail.this, emoneyWithraw.class);
            }
        });

        ListView list = (ListView)findViewById(R.id.EmoneyListView);
        this.inputEmoneyList();

        EmoneyAdapter adapter = new EmoneyAdapter(this, emolist);
        list.setAdapter(adapter);
    }

    public void inputEmoneyList(){
        emolist = new ArrayList<emoneyList>();

        emolist.add(new emoneyList("2020.03.20", "충전", "100,000원"));
        emolist.add(new emoneyList("2020.03.21", "출금", "50,000원"));
        emolist.add(new emoneyList("2020.03.22", "충전", "10,000원"));
        emolist.add(new emoneyList("2020.03.23", "충전", "30,000원"));
        emolist.add(new emoneyList("2020.03.24", "출금", "50,000원"));
    }
}
