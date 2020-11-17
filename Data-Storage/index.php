<?php
   require 'mongo_conn.php';
   
   $filter = [
      'name' => "ens"
  ];
  $options = [];

  $query = new \MongoDB\Driver\Query($filter, $options);
  $cinema  = $manager->executeQuery('cinema_db.Cinemas', $query);
  $cinema = $cinema->toArray();
  if(is_null($cinema[0]->name)){
   echo "hiii";
  }
  else{
   echo "nice";
  }

  


?>