<?php
    /**
     * This file converts curl request to queries in MongogDB!!
    */
    require 'mongo_conn.php';

    if (isset($_GET['get_movies']) && $_GET['get_movies'] == true){
        /* Query for all the items in the collection */
        $query = new \MongoDB\Driver\Query( [] );

        $movies = $manager->executeQuery("cinema_db.Movies", $query);
      

        //convert dates to string and _ids!
        foreach ($movies as $m) {
            $movies_array[] = array( 
                "title" => $m->title, 
                "playing_in" => $m->playing_in, 
                "category" => $m->category, 
                "description" => $m->description,
                "oid" => (string)$m->_id,
                "start_date" => $m->start_date->toDateTime()->format('Y-m-d'), 
                "end_date" => $m->end_date->toDateTime()->format('Y-m-d')
            ); 
         
        }
        //return movies to rest_api
        echo json_encode($movies_array,true);

        
    }

    if (isset($_GET['get_favorites']) && $_GET['get_favorites'] == true){
        $filter = ['userid' => $_GET['user_id'] ];
        $options = [];

        $query = new \MongoDB\Driver\Query($filter, $options);
        $favorites  = $manager->executeQuery('cinema_db.Favorites', $query);

        //convert _ids to string!
        foreach ($favorites as $f) {
            $favorites_arr[] = array( 
                "movid" => $f->movid, 
                "oid" => (string)$f->_id,
                "user_id" => $f->userid
            ); 
         
        }
        //return favorites to rest api
        echo json_encode($favorites_arr,true);

        
    }
?>