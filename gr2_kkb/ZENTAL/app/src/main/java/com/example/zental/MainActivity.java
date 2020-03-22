package com.example.zental;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_m_kb_mypagemain);

        Button moveMemberUpdate = (Button)findViewById(R.id.moveMemberUpdate);

        moveMemberUpdate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, memberUpdate.class);
                startActivity(intent);
            }
        });
    }
}
