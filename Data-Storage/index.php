<?php
   require 'mongo_conn.php';

   $filter = ['movid' => "5fad031a8ef6a0295698d826"];
   $options = [];

   $query = new \MongoDB\Driver\Query($filter, $options);
   $rows   = $manager->executeQuery('cinema_db.Favorites', $query);

   foreach ($rows as $document) {
      var_dump( $document);
      echo "<br>";
   }

?>