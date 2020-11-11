<?php
    require 'global_vars.php';
    
    /**
     * This file is the api for communication between Web-App and App-Logic
     * 
     * $_GET['login'] =>  login with keyrock with password and email from keyrock!
     * 
    */
    
    if (isset($_GET['login']) && $_GET['login'] == 'login') {

        $authorization = base64_encode($GLOBALS['client_id'].":". $GLOBALS['client_secret']);

        //Initialize a cURL session
        $curl = curl_init();

        curl_setopt($curl,CURLOPT_URL, $GLOBALS['access_token_url']);
        
        curl_setopt($curl, CURLOPT_HTTPHEADER, array(
            'Authorization: Basic '.$authorization,
            'Content-Type: application/x-www-form-urlencoded'
        ));

        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER,true);
        
        curl_setopt($curl,CURLOPT_POSTFIELDS, http_build_query([
            'grant_type' => 'password',
            'username'    => $_GET['email'],
            'password' => $_GET['password']
        ]));
    
        //make the request
        $result = curl_exec($curl);
        curl_close($curl);
        $result= json_decode($result);

        $access_token = $result->access_token;
        $refresh_token = $result->refresh_token;

        //get user info
        $curl = curl_init();
        $url = $GLOBALS['user_info_url']."?" .http_build_query([
            'access_token' => $access_token
        ]);

        curl_setopt($curl,CURLOPT_URL, $url);

        curl_setopt($curl, CURLOPT_HTTPGET, true);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER,true);
        $result = curl_exec($curl);
        curl_close($curl);

        $result = json_decode($result);

        $array = array(
            "access_token" => $access_token, 
            "refresh_token" => $refresh_token,
            "role" => $result->roles[0]->name,
            "username" => $result->username,
            "email" => $result->email,
            "user_id" => $result->id,

        );

        //return to app logic
        echo json_encode($array);

    }
    

?>