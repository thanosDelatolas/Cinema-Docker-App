<?php 
  /*
  * redirect to keyrock login!!!
  */
   $client_id = "7ffbed02-ac0c-4784-8c52-2cf8d77f85fd";
   $client_secret = "1dacab95-4511-49bf-ba39-80119f37b094";

   $auth_url = "http://172.18.1.5:3000/oauth2/authorize";

   $redirect_uri ="http://localhost:4000/welcome.php";
 
      
   $keyrock_url = $auth_url."?". http_build_query([
      'client_id' => $client_id,
      'response_type' => 'code',
      'state' => 'get_code',
      'redirect_uri' => $redirect_uri,     
   ]);
   header("location: ".$keyrock_url); 

   
?>

