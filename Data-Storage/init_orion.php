<?php
   /**
    * Init Orion
    */

   require 'mongo_conn.php';

   $query = new \MongoDB\Driver\Query( []);

   $movies = $manager->executeQuery("cinema_db.Movies", $query);
   $movies = $movies->toArray();

   //$now = date("Y-m-d");
    foreach($movies as $m){

        //get cinema name

        $filter = [
            '_id' => new MongoDB\BSON\ObjectId( $m->playing_in)
        ];

        $options = [
            'projection' => ['name' => 1]
        ];
    
        $query = new \MongoDB\Driver\Query($filter, $options);
        $cinema  = $manager->executeQuery('cinema_db.Cinemas', $query);
        $cinema = $cinema->toArray();
        $cin_name = $cinema[0]->name;

        $arr_input =  array(
            'id' => (string)$m->_id,
            'type' => "Movie", 
            'start_date' => $m->start_date->toDateTime()->format('Y-m-d'),    
            'end_date' => $m->end_date->toDateTime()->format('Y-m-d'),   
            'cin_name' => $cin_name,
            'title' => $m->title,
            'category' => $m->category
        );
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://172.18.1.15:1026/v2/entities?options=keyValues",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode($arr_input,true),
            CURLOPT_HTTPHEADER => array(
                "Content-Type: application/json",
            ),
        ));
    
        $response = curl_exec($curl);
        
    
        curl_close($curl);
        echo $response;
        
   }
   


?>