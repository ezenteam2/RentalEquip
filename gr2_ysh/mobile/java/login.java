package com.example.zentalpersonal;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class login extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);

        Button recommend = (Button)findViewById(R.id.next1);

        recommend.setOnClickListener(new Button.OnClickListener() {

            public void onClick(View v) {
                Intent intentrecommend = new Intent(login.this,login2.class);
                startActivity(intentrecommend);
            }

        });
    }
}
