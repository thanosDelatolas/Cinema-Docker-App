<?php
   //update a sub
   //http://localhost:4000/updateSub.php
   $arr = array(
      'start_date' => '2021-09-12'
   );
  
   
   $curl = curl_init();

   curl_setopt_array($curl, array(
      CURLOPT_URL => "http://172.18.1.15:1026/v2/entities/5fad031a8ef6a0295698d826/attrs?options=keyValues",
      CURLOPT_HEADER => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_CUSTOMREQUEST => "PATCH",
      CURLOPT_POSTFIELDS => json_encode($arr),
      CURLOPT_HTTPHEADER => array(
         "Content-Type: application/json"
      ),
   ));

   $response = curl_exec($curl);

   curl_close($curl);
   echo $response;


   

?>
