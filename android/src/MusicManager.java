package org.qtproject.example.musicmanager;
import org.qtproject.qt5.android.QtNative;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.app.PendingIntent;
import android.media.AudioManager;
import android.view.KeyEvent;
import android.os.SystemClock;

public class MusicManager {

    private static AudioManager am(){
        Context mContext = QtNative.activity().getApplicationContext();
        return (AudioManager)mContext.getSystemService(mContext.AUDIO_SERVICE);
        }

    public String test() {
        return "testing test in musicmanager";
        }


    public String next() {
        KeyEvent event = new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_NEXT);
        am().dispatchMediaKeyEvent(event);

        KeyEvent event2 = new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MEDIA_NEXT);
        am().dispatchMediaKeyEvent(event2);
        return "Sending next Event";

    }

    public String previous() {
        KeyEvent event = new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_PREVIOUS);
        am().dispatchMediaKeyEvent(event);

        KeyEvent event2 = new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MEDIA_PREVIOUS);
        am().dispatchMediaKeyEvent(event2);
        return "Sending previous Event";

        }

    public String pause(){

        KeyEvent event = new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE);
        am().dispatchMediaKeyEvent(event);

        KeyEvent event2 = new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE);
        am().dispatchMediaKeyEvent(event2);
        return "Sending Play/Pause Event";
        }

    public void resume(){
        System.out.println("doing resume");

        }

}
