<?php
    
    //get keyrock permanant code!
    

    //get access tokenhttp://localhost:4000/login.php
    $client_id = "7ffbed02-ac0c-4784-8c52-2cf8d77f85fd";
    $client_secret = "1dacab95-4511-49bf-ba39-80119f37b094";

    $authorization = base64_encode($client_id.":".$client_secret);

    $access_token_url = "http://172.18.1.5:3000/oauth2/token";

    $redirect_uri ="http://localhost:4000/welcome.php";       
  
    echo $_GET['code'];
    echo "<br>".$authorization;
    //Initialize a cURL session
    $curl = curl_init();

    curl_setopt($curl,CURLOPT_URL, $access_token_url);
    
    curl_setopt($curl, CURLOPT_HTTPHEADER, array(
        'Authorization: Basic '.$authorization,
        'Content-Type: application/x-www-form-urlencoded'
    ));

    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER,true);
    
    curl_setopt($curl,CURLOPT_POSTFIELDS, http_build_query([
        'grant_type' => 'authorization_code',
        'code'    => $_GET['code'],
        'redirect_uri' => $redirect_uri
    ]));

   
   
    //make the request
    $result = curl_exec($curl);
    curl_close($curl);
    
    echo "<br>". $result;
 ;
    //$_SESSION['access_token'] = $result['access_token'];
    //$_SESSION['refresh_token'] = $result['refresh_token'];
    //header("location: ".$redirect_uri);
   

?>