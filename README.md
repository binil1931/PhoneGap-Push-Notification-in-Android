# PhoneGap Push Notification in Android

   Here it shows a sample for Push Notification of PhoneGap inn Android.Here we also attaching the server code in PHP

## Steps

   1. Go to Goggle developer console and create an App
       1.1. Turn On Goggle Cloud Message 
	   1.2. Click "Credential", Go to Public Key, Select Server .
	   1.3. Type your Ip and register it.
	   1.4. You will get Api Key and Project Id.
	   
   2. Open the project in Eclipse
   3. Open "CORDOVA_GCM_script.js" from "www" folder
      ```   
      window.plugins.GCM.register("YOUR PROJECT ID", "GCM_Event", GCM_Success, GCM_Fail );
      ```  
	  
	   ```  
        //   $.ajax({
        //   type: 'POST',
        //    url: "URL/register.php",
        //    data: { name: "Vishnu", email: "vishnu@gmail.com",regId:e.regid }
        //  });
      ``` 
   4. Go to server and open cofig.php, paste your API key there.

