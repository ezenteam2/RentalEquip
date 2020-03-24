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

import androidx.appcompat.app.AppCompatActivity;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;

public class emoneyCharge extends AppCompatActivity {

    DecimalFormat df = new DecimalFormat("###,###");
    ArrayList<String> BankList;
    ArrayAdapter<String> BankListAdapter;
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_m_kb_emoneycharge);

        Button charge10000 = (Button)findViewById(R.id.Charge10000);

        charge10000.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView textView = (TextView)findViewById(R.id.PriceTextView);
                textView.setText("10,000");
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputCharge);
                radio.setChecked(false);
            }
        });

        Button charge30000 = (Button)findViewById(R.id.Charge30000);
        charge30000.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView textView = (TextView)findViewById(R.id.PriceTextView);
                textView.setText("30,000");
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputCharge);
                radio.setChecked(false);
            }
        });

        Button charge50000 = (Button)findViewById(R.id.Charge50000);
        charge50000.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView textView = (TextView)findViewById(R.id.PriceTextView);
                textView.setText("50,000");
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputCharge);
                radio.setChecked(false);
            }
        });

        final EditText chargePrice = (EditText)findViewById(R.id.EditChargePrice);
        chargePrice.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                TextView textView = (TextView)findViewById(R.id.PriceTextView);
                textView.setText(df.format(Integer.parseInt(chargePrice.getText().toString())));
                RadioButton radio = (RadioButton)findViewById(R.id.RadioInputCharge);
                radio.setChecked(true);
                return false;
            }
        });

        BankList = new ArrayList<String>();
        BankList.add("은행");
        BankList.add("신한은행");
        BankList.add("하나은행");
        BankList.add("우리은행");
        BankList.add("국민은행");
        BankList.add("농협");
        BankList.add("기업은행");

        BankListAdapter = new ArrayAdapter<>(getApplicationContext(),
                android.R.layout.simple_spinner_dropdown_item, BankList);
        Spinner spinner = (Spinner)findViewById(R.id.Bank_Spinner);
        spinner.setAdapter(BankListAdapter);

        Button moveWithraw = (Button)findViewById(R.id.moveEmoneyWithraw);
        moveWithraw.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(emoneyCharge.this, emoneyWithraw.class);
                startActivity(intent);
            }
        });

        Button moveDetail = (Button)findViewById(R.id.moveEmoneyDetail);
        moveDetail.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(emoneyCharge.this, emoneyDetail.class);
                startActivity(intent);
            }
        });
    }


}
