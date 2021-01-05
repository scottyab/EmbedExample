package com.scottyab.mylibrary.utils;

import android.util.Log;

public class JavaLogger {

    private static final String TAG = "EXAMPLE";

    public static void d(String message) {
        Log.d(TAG, message);
    }

}
