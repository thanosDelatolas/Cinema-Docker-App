<?php
    /**
     * This file converts curl request to queries in MongogDB!!
    */
    require 'mongo_conn.php';

    if (isset($_GET['get_movies']) && $_GET['get_movies'] == true){
        /* Query for all the items in the collection */
        $query = new \MongoDB\Driver\Query( []);

        $cinemas = $manager->executeQuery("cinema_db.Cinemas", $query);
        $cinemas = $cinemas->toArray();
        $movies = $manager->executeQuery("cinema_db.Movies", $query);
        //convert dates to string and _ids!
        foreach ($movies as $m) {
            /* get cinema name */
            $test = $cinemas;
            $cin_name="ERROR";
            foreach($test as $t){
                if($t ->_id == $m->playing_in){
                    $cin_name= $t->name;
                }
            }
            $movies_array[] = array( 
                    "title" => $m->title, 
                    "playing_in" =>$cin_name,
                    
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

    /** Remove favoirets! */
    if (isset($_GET['remove_fav']) && $_GET['remove_fav'] == true){
        $filter = [
            'userid' => $_GET['user_id'],
            'movid' => $_GET['mov_id']
            
        ];
       
        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);
        $bulk->delete($filter);
        $result = $manager->executeBulkWrite('cinema_db.Favorites', $bulk,$writeConcern);
        echo $result->getDeletedCount();

    }

    /** Add favoirets! */
    if (isset($_GET['add_fav']) && $_GET['add_fav'] == true){
        $filter = [
            'userid' => $_GET['user_id'],
            'movid' => $_GET['mov_id']
            
        ];
       
        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);
        $bulk->insert($filter);
        $result = $manager->executeBulkWrite('cinema_db.Favorites', $bulk,$writeConcern);
        echo $result->getInsertedCount();

    }


    /** Get all movies and all cinemas that an CINEMAOWNER has! */
    if (isset($_GET['get_owner_data']) && $_GET['get_owner_data'] == true){
        $filter = [
            'owner_id' => $_GET['user_id'],
            
        ];
       
        $options = [];

        $query = new \MongoDB\Driver\Query($filter, $options);
        $cinemas  = $manager->executeQuery('cinema_db.Cinemas', $query);
        $cinemas = $cinemas->toArray();
     
        
        foreach($cinemas as $cin){
     
           $filter = ['playing_in' => (string)$cin->_id ];
           $options = [];

           $query = new \MongoDB\Driver\Query($filter, $options);
           $movies  = $manager->executeQuery('cinema_db.Movies', $query);
           $movies_array = $movies->toArray();
           
           foreach($movies_array as $m){
              $owner_data[] = array( 
                 "cin_name" => $cin->name, 
                 "cin_id" =>(string)$cin->_id,
                 "title" => $m->title,
                 "category" => $m->category, 
                 "description" => $m->description,
                 "mov_id" => (string)$m->_id,
                 "start_date" => $m->start_date->toDateTime()->format('Y-m-d'), 
                 "end_date" => $m->end_date->toDateTime()->format('Y-m-d')
              ); 
           }           
           
        }

        //return to app logic
        echo json_encode($owner_data,true);
    }

    
?>