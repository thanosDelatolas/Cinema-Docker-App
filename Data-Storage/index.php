<?php
   require 'mongo_conn.php';
   
   $filter = ['owner_id' => "5565f5dd-02ea-4bd7-ba31-bb76a82657be" ];
   $options = [];

   $query = new \MongoDB\Driver\Query($filter, $options);
   $res  = $manager->executeQuery('cinema_db.Cinemas', $query);
   $res = $res->toArray();

   
   foreach($res as $r){

      $filter = ['playing_in' => (string)$r->_id ];
      $options = [];
      $query = new \MongoDB\Driver\Query($filter, $options);
      $movies  = $manager->executeQuery('cinema_db.Movies', $query);
      $movies_array = $movies->toArray();
      foreach($movies_array as $m){
         $cinemas_array[] = array( 
            "cin_namename" => $r->name, 
            "cin_id" =>(string)$r->_id,
            "title" => $m->title,
            "category" => $m->category, 
            "description" => $m->description,
            "mov_id" => (string)$m->_id,
            "start_date" => $m->start_date->toDateTime()->format('Y-m-d'), 
            "end_date" => $m->end_date->toDateTime()->format('Y-m-d')
         ); 
      }
      
      
      
   }
   
   var_dump ($cinemas_array);


?>