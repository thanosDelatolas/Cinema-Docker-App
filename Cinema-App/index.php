<?php 
   session_start();
   $email="tdel@test.com";
   $password = '1234';

   $keyrock_service = "http://172.18.1.5:3000/oauth2/authorize";
   $client_id = "7ffbed02-ac0c-4784-8c52-2cf8d77f85fd";
   $client_secret = "1dacab95-4511-49bf-ba39-80119f37b094";

   $authorization = base64_encode($client_id.":".$client_secret);

   $access_token_url = "http://172.18.1.5:3000/idm/oauth2/authorize";

   $redirect_uri ="http://localhost:4000/welcome.php";
   $header = array("Authorization Basic:".$authorization);
      
   //Initialize a cURL session
   $curl = curl_init();

   curl_setopt($curl,CURLOPT_URL, $access_token_url);
   curl_setopt($curl,CURLOPT_HTTPGET,true);
   curl_setopt($curl,CURLOPT_POSTFIELDS, http_build_query([
      'response_type' => 'code',
      'client_id' => $client_id,
      'redirect_uri' => $redirect_uri,
   ]));
   curl_setopt($curl, CURLOPT_HTTPAUTH,CURLAUTH_BASIC);
   $result = curl_exec($curl);
   echo json_encode($result);

    

?>