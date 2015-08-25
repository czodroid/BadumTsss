package org.czo.badumtsss;

import android.app.Activity;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.WindowManager;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE);   // Do not listen for touch events
        MediaPlayer mediaPlayer = MediaPlayer.create(getApplicationContext(), R.raw.badum);
        mediaPlayer.start(); // no need to call prepare(); create() does that for you
        finish();
    }
}
