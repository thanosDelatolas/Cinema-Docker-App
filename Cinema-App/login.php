<?php 
  /*
  * redirect to keyrock login!!!
  */
  
   require 'global_vars.php';
      
   $keyrock_url = $auth_url."?". http_build_query([
      'client_id' =>  $GLOBALS['client_id'],
      'response_type' => 'code',
      'state' => 'get_code',
      'redirect_uri' => $GLOBALS['redirect_uri'],     
   ]);
   header("location: ".$keyrock_url); 

   
?>

