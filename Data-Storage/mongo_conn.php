<?php

    $manager = new MongoDB\Driver\Manager("mongodb://root:root_pass@mongo_db_data_storage:27017");

   /* Query for all the items in the collection */
    $query = new MongoDB\Driver\Query( [] );

    /* Query the "asteroids" collection of the "test" database */
    $cursor = $manager->executeQuery("cinema_db.Cinemas", $query);

    /* $cursor now contains an object that wraps around the result set. Use
    * foreach() to iterate over all the result */
    foreach($cursor as $document) {
        echo $document->name."<br>";
    }





?>