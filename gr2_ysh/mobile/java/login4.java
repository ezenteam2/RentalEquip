package com.example.zentalpersonal;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class login4 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login4);
        Button recommend = (Button)findViewById(R.id.next4);

        recommend.setOnClickListener(new Button.OnClickListener() {

            public void onClick(View v) {
                Intent intentrecommend = new Intent(login4.this,login5.class);
                startActivity(intentrecommend);
            }

        });
    }
}
