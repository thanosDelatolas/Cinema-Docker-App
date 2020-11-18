<?php
   /**
    * Init Orion
    */

   require 'mongo_conn.php';

   $query = new \MongoDB\Driver\Query( []);

   $movies = $manager->executeQuery("cinema_db.Movies", $query);
   $movies = $movies->toArray();

   $now = date("Y-m-d");
    foreach($movies as $m){
        if($m->end_date->toDateTime()->format('Y-m-d') >= $now){
            $still_playing = true;
        }
        else{
            $still_playing = false;
        }
        $arr_input =  array(
            'id' => (string)$m->_id,
            'type' => "Movie", 
            'start_date' => $m->start_date->toDateTime()->format('Y-m-d'),    
            'end_date' => $m->end_date->toDateTime()->format('Y-m-d'),   
            'still_playing' => $still_playing
        );
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
        CURLOPT_POSTFIELDS => json_encode($arr_input),
        CURLOPT_HTTPHEADER => array(
            "Content-Type: application/json",
            "Cookie: PHPSESSID=2443011ea8c096956d831711254ca07f; pma_lang=en; phpMyAdmin=ec08d3bd45eff69b3c11e406ec59bcc5"
        ),
        ));
    
        $response = curl_exec($curl);
    
        curl_close($curl);
        echo $response;

   }
   


?>