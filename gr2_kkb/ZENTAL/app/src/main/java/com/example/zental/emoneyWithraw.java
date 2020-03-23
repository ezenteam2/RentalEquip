package com.example.zental;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class emoneyWithraw extends AppCompatActivity {
    ArrayList<String> arrayList;
    ArrayAdapter<String> arrayAdapter;
    DecimalFormat df = new DecimalFormat("###,###");
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_m_emoneywithraw);

        Button moveCharge = (Button)findViewById(R.id.moveCharge);
        moveCharge.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(emoneyWithraw.this, emoneyCharge.class);
                startActivity(intent);
            }
        });

        Button Withraw10000 = (Button)findViewById(R.id.Withraw10000);
        Withraw10000.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView textViews = (TextView)findViewById(R.id.PriceTextView2);
                textViews.setText("10,000");
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputWithraw);
                radio.setChecked(false);
            }
        });
        Button Withraw30000 = (Button)findViewById(R.id.Withraw30000);
        Withraw30000.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView textViews = (TextView)findViewById(R.id.PriceTextView2);
                textViews.setText("30,000");
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputWithraw);
                radio.setChecked(false);
            }
        });

        Button Withraw50000 = (Button)findViewById(R.id.Withraw50000);
        Withraw50000.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView textViews = (TextView)findViewById(R.id.PriceTextView2);
                textViews.setText("50,000");
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputWithraw);
                radio.setChecked(false);
            }
        });

        final EditText eidtWithrawPrice = (EditText)findViewById(R.id.EditWithrawPrice);
        eidtWithrawPrice.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                TextView textViews = (TextView)findViewById(R.id.PriceTextView2);
                textViews.setText(df.format(Integer.parseInt(eidtWithrawPrice.getText().toString())));
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputWithraw);
                radio.setChecked(true);
                return false;
            }
        });

        arrayList = new ArrayList<String>();
        arrayList.add("은행");
        arrayList.add("신한은행");
        arrayList.add("하나은행");
        arrayList.add("우리은행");
        arrayList.add("국민은행");
        arrayList.add("농협");
        arrayList.add("기업은행");
        arrayAdapter = new ArrayAdapter<>(getApplicationContext(), android.R.layout.simple_spinner_dropdown_item, arrayList);


        Spinner spinner = (Spinner)findViewById(R.id.Bank_Spinner2);
        spinner.setAdapter(arrayAdapter);
    }
}
