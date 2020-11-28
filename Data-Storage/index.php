<?php
    

    //first check if this subscription already exists!
    $filter = [
        'subID' => trim('5fc2626e872c47af2707b47')
    ];
    $options = [];

    
    $query = new \MongoDB\Driver\Query($filter, $options);
    $cinema  = $manager->executeQuery('cinema_db.Subscriptions', $query);
    $subscriptions = $subscriptions->toArray();

    var_dump($subscriptions);
?>
