<?php
    require 'mongo_conn.php';

    $user_id ='0b10e960-70d4-4318-b6d0-e9132430ab09';

    $filter = ['user_id' => $user_id ];
    $options = [];

    $query = new \MongoDB\Driver\Query($filter, $options);
    $feed  = $manager->executeQuery('cinema_db.Feed', $query);

    $feed = $feed->toArray();

    foreach ($feed as $f) {
        echo $f->title."<br>";
    }
?>
