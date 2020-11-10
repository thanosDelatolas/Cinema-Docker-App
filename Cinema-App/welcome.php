<?php
    session_start();   
    require 'global_vars.php';
    if(isset($_GET['code'])){
        
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
            'grant_type' => 'authorization_code',
            'code'    => $_GET['code'],
            'redirect_uri' => $GLOBALS['redirect_uri']
        ]));
    
        //make the request
        $result = curl_exec($curl);
        curl_close($curl);
        $result = json_decode($result);

        $_SESSION['access_token'] = $result->access_token ;
        $_SESSION['refresh_token'] = $result->refresh_token;

        header("Location: ".$GLOBALS['redirect_uri']);
    }
    else{
        //get user info
        $curl = curl_init();
        $url = $GLOBALS['user_info_url']."?" .http_build_query([
            'access_token' => $_SESSION['access_token']
        ]);
        curl_setopt($curl,CURLOPT_URL, $url);

        curl_setopt($curl, CURLOPT_HTTPGET, true);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER,true);
        $result = curl_exec($curl);
        curl_close($curl);
        $result = json_encode($result);
        echo $result;
        
    }
    
    
    
   

?>