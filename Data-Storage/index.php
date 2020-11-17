<?php
   require 'mongo_conn.php';
   
   $cin_id = "5fac44e1b711b9d9961da7b1";

   //get all Movies playing in this cinema
   $filter = [
      'playing_in' => $cin_id
   ];
   $options = [ 'projection' => ['_id' => 1]];
   
   //get name and id of last movie bought!
   $query = new \MongoDB\Driver\Query($filter, $options);
   $movies  = $manager->executeQuery('cinema_db.Movies', $query);
   $movies_array = $movies->toArray();
   
   //Delete all the favorites!
   foreach($movies_array as $movie){
      echo (string)$movie->_id."<br>";

   }

  


?>