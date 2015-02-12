package com.cordova2.gcm; //Edit this to match the name of your application

import org.json.JSONException;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;

import com.google.android.gcm.GCMBaseIntentService;
import com.plugin.GCM.GCMPlugin;


@TargetApi(Build.VERSION_CODES.JELLY_BEAN) @SuppressLint("NewApi") public class GCMIntentService extends GCMBaseIntentService {

  public static final String ME="GCMReceiver";

  public GCMIntentService() {
    super("GCMIntentService");
  }
  private static final String TAG = "GCMIntentService";

  @Override
  public void onRegistered(Context context, String regId) {

    Log.v(ME + ":onRegistered", "Registration ID arrived!");
    Log.v(ME + ":onRegistered", regId);

    JSONObject json;

    try
    {
      json = new JSONObject().put("event", "registered");
      json.put("regid", regId);

      Log.v(ME + ":onRegisterd", json.toString());

      // Send this JSON data to the JavaScript application above EVENT should be set to the msg type
      // In this case this is the registration ID
      GCMPlugin.sendJavascript( json );

    }
    catch( JSONException e)
    {
      // No message to the user is sent, JSON failed
      Log.e(ME + ":onRegisterd", "JSON exception");
    }
  }

  @Override
  public void onUnregistered(Context context, String regId) {
    Log.d(TAG, "onUnregistered - regId: " + regId);
  }

  @TargetApi(Build.VERSION_CODES.HONEYCOMB) @SuppressLint("NewApi") @Override
  protected void onMessage(Context context, Intent intent) {
    Log.d(TAG, "onMessage - context: " + context);

    // Extract the payload from the message
    Bundle extras = intent.getExtras();
    if (extras != null) {
//      try
//      {
        Log.v(ME + ":onMessage extras ", extras.getString("price"));

        
        Notification n  = new Notification.Builder(this)
        .setContentTitle("New Message from " + "Podium")
        .setContentText(extras.getString("price"))
        .setSmallIcon(R.drawable.ic_launcher)
        .setVibrate(new long[] { 1000, 1000, 1000, 1000, 1000 })
        .setAutoCancel(true).build();
    
  
NotificationManager notificationManager = 
  (NotificationManager) getSystemService(NOTIFICATION_SERVICE);

notificationManager.notify(0, n); 
//        JSONObject json;
//        json = new JSONObject().put("event", "mespricesage");
//
//
//        // My application on my host server sends back to "EXTRAS" variables message and msgcnt
//        // Depending on how you build your server app you can specify what variables you want to send
//        //
//        json.put("message", extras.getString("message"));
//        json.put("msgcnt", extras.getString("msgcnt"));
//
//        Log.v(ME + ":onMessage ", json.toString());
//
//        GCMPlugin.sendJavascript( json );
        // Send the MESSAGE to the Javascript application
 //     }
//      catch( JSONException e)
//      {
//        Log.e(ME + ":onMessage", "JSON exception");
//      }        	
    }


  }

  @Override
  public void onError(Context context, String errorId) {
    Log.e(TAG, "onError - errorId: " + errorId);
  }




}
