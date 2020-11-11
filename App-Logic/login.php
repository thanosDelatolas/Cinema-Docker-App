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
   session_start();
   if($_SESSION['role'] == 'USER' or $_SESSION['role'] == 'CINEMAOWNER'){
      header("location: ".$keyrock_url); 
      exit;
   }
   

   
?>

