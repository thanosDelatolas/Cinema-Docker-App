<?php
   
   $curl = curl_init();

   curl_setopt_array($curl, array(
   CURLOPT_URL => "http://orion:1026/v2/entities?options=keyValues",
   CURLOPT_RETURNTRANSFER => true,
   CURLOPT_ENCODING => "",
   CURLOPT_MAXREDIRS => 10,
   CURLOPT_TIMEOUT => 0,
   CURLOPT_FOLLOWLOCATION => true,
   CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
   CURLOPT_CUSTOMREQUEST => "POST",
   CURLOPT_POSTFIELDS =>"{\n    \"id\": \"5fad031a8ef6a0295698d829\",\n    \"type\": \"Movie\",\n    \"start_date\": \"2021-01-16\",\n    \"end_date\": \"2021-03-30\"\n}",
   CURLOPT_HTTPHEADER => array(
      "Content-Type: application/json",
      "Cookie: PHPSESSID=2443011ea8c096956d831711254ca07f; pma_lang=en; phpMyAdmin=ec08d3bd45eff69b3c11e406ec59bcc5"
   ),
   ));

   $response = curl_exec($curl);

   curl_close($curl);
   echo $response;
  


?>