<?php
   require 'mongo_conn.php';
   
   $start_date = strtotime('2020-10-21');
   
   $d =  new MongoDB\BSON\UTCDateTime($start_date* 1000);
   var_dump($d);


?>