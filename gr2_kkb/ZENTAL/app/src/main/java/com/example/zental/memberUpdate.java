package com.example.zental;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;

import java.io.File;


public class memberUpdate extends AppCompatActivity {
    Uri mImageCatureUri;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_w_kb_memberupdate);

        ImageView img = (ImageView)findViewById(R.id.ImageButton);
    }

    public void doTakePhotoAction(){
        Intent intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);


    }
}
