<?php
    session_start();
    require 'global_vars.php';
    /**
     * return from keyrock!!
     */
    if(isset($_GET['code'])){
       
        //returns access token and refresh token
        $tokens = get_tokens($_GET['code']);
        
        //get user info
        $user_info = get_user_info($tokens->access_token);
        $ret_object = json_encode(array(
            'role' => $user_info->roles[0]->name,
            'username' => $user_info->username,
            'id' => $user_info->id,
            'email' => $user_info->email,
        ));
        
        
        //return to web App!!!
        echo $ret_object;

    }

    function get_tokens($code){

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
            'code'    => $code,
            'redirect_uri' => $GLOBALS['redirect_uri']
        ]));
    
        //make the request
        $result = curl_exec($curl);
        curl_close($curl);
        return json_decode($result);

    }
    function get_user_info($access_token) {

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
        return json_decode($result);
    
        
    }
?>