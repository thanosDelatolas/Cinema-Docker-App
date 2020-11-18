<?php
   require 'mongo_conn.php';

   $now = date("Y-m-d");
   
   $query = new \MongoDB\Driver\Query( []);

   $movies = $manager->executeQuery("cinema_db.Movies", $query);
   $movies = $movies->toArray();

   $curr_sql=$movies[0]->end_date->toDateTime()->format('Y-m-d');
   if($now <= $curr_sql){
      echo 'hii';
   }
   


?>