<?php
    require 'mongo_conn.php';

    $user_id ='0b10e960-70d4-4318-b6d0-e9132430ab09';

    $filter = ['mov_id' => '5fc2a36124c4bc120b53dc3a' ];
    $options = ['projection' => ['subID' => 1] ];

    $query = new \MongoDB\Driver\Query($filter, $options);
    $subs  = $manager->executeQuery('cinema_db.Subscriptions', $query);

    $subs = $subs->toArray();
    $ret_array = array();
    if(count($subs) != 0){
        foreach($subs as $s){
            $ret_array[] =$s->subID;
        }
        $final_array = array(
            'deleted_count' => 10,
            'subs' => $ret_array
        );

        $final_array = json_encode($final_array,true);
        $arr = json_decode($final_array);
    
        $arr1 = $arr->subs;
        
        if(is_array($arr1)){
            var_dump($arr1);
            foreach($arr1 as $s){
                echo $s."<br>";
            }
            echo $arr->deleted_count;
        }
        

        
        
    }
    else
        echo 'hi';

    
?>
