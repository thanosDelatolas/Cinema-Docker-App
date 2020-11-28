<?php
    require 'mongo_conn.php';

    //first check if this subscription already exists!
    $filter = [
        'user_id' => trim('0b10e960-70d4-4318-b6d0-e9132430ab09'),
        'mov_id' => trim('5fad031a8ef6a0295698d828')
    ];
    $options = [];

    
    $query = new \MongoDB\Driver\Query($filter, $options);
    $subscriptions  = $manager->executeQuery('cinema_db.Subscriptions', $query);
    $subscriptions = $subscriptions->toArray();

    
    $arr = array(
        'subID' => $subscriptions[0]->subID,
        'deletedCount' => 1
    );
    print_r($arr);
?>
