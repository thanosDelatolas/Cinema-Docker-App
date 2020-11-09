<?php 
   session_start();
   $email="tdel@test.com";
   $password = '1234';

   require 'keyrock_call.php';

   

   keyrcok_call($email,$password);

?>