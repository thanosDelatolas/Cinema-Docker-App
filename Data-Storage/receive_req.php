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


     /** Get all cinemas of a cinemaowner */
     if (isset($_GET['get_cinemas']) && $_GET['get_cinemas'] == true){
        $filter = [
            'owner_id' => $_GET['owner_id'],
            
        ];
       
        $options = [
            'projection' => ['name' => 1, '_id' => 1]
        ];
      
        $query = new \MongoDB\Driver\Query($filter, $options);
        $cinemas  = $manager->executeQuery('cinema_db.Cinemas', $query);
        $cinemas = $cinemas->toArray();

        foreach($cinemas as $cin){
            $cin_array[] = array( 
                "name" => $cin->name, 
                "cin_id" =>(string)$cin->_id
            ); 

        }
    
        //return to app logic
        echo json_encode($cin_array,true);
    }
    
    //a cinema owner wants to modify movie
    if (isset($_GET['modify_movie']) && $_GET['modify_movie'] == true){
        $filter = [
            '_id' => new MongoDB\BSON\ObjectId( $_GET['mov_id'])
            
        ];
        $start_date = strtotime($_GET['start_date']);
        $end_date = strtotime($_GET['end_date']);
        //data tha will be modified
        $mod_data = [
            '$set' => [
                'playing_in' => $_GET['playing_in'],
                'title' => $_GET['title'],
                'category' => $_GET['category'],
                'start_date' => new MongoDB\BSON\UTCDateTime($start_date*1000),
                'end_date' => new MongoDB\BSON\UTCDateTime($end_date*1000)

            ]
        ];
        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);
        $bulk->update($filter,$mod_data);
        $result = $manager->executeBulkWrite('cinema_db.Movies', $bulk,$writeConcern);

        $count = $result->getModifiedCount();

        $cin_name ="";
        //get cinema name,_id
        if($count > 0){

            $filter = [
                '_id' => new MongoDB\BSON\ObjectId( $_GET['playing_in'])
            ];
    
            $options = [
                'projection' => ['name' => 1]
            ];
        
            $query = new \MongoDB\Driver\Query($filter, $options);
            $cinema  = $manager->executeQuery('cinema_db.Cinemas', $query);
            $cinema = $cinema->toArray();
            $cin_name = $cinema[0]->name;
            $cin_id = (string)$cinema[0]->_id;

        }
        //create the repsonse
        $ret_array = array(
            'count' => $count,
            'cin_id' => $cin_id,
            'playing_in' => $cin_name,
            'title' => $_GET['title'],
            'category' => $_GET['category'],
            'start_date' => $_GET['start_date'],
            'end_date' => $_GET['end_date']
        );
        echo json_encode($ret_array,true);
       

    }
    /**
     * a cinema owner wants to delete a movie
     * Must remove from favorites!
     */ 
    if (isset($_GET['del_movie']) && $_GET['del_movie'] == true){
        $filter = [
            '_id' => new MongoDB\BSON\ObjectId( $_GET['mov_id'])
            
        ];
        // delete movie!
        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);
        $bulk->delete($filter);
        $result = $manager->executeBulkWrite('cinema_db.Movies', $bulk,$writeConcern);
        $deleted_movie_count = $result->getDeletedCount();

        //delete from favorites!!(A user will be notified from Orion)

        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);
        $filter = [
            'movid' =>  $_GET['mov_id']
            
        ];
        $bulk->delete($filter);
        $result = $manager->executeBulkWrite('cinema_db.Favorites', $bulk,$writeConcern);
        
        echo $deleted_movie_count;

    }

    /**
     * Returns last movie which is inserted in any of a CINEMAOWNER'S cinemas
    */
    if (isset($_GET['get_last_movie']) && $_GET['get_last_movie'] == true){
        $owner_id = $_GET['owner_id'];

        $filter = [
            'owner_id' => $owner_id
        ];
        $options = [
            'sort' => ['_id' => -1],
            'limit' => 1,
            'projection' => ['title' => 1, 'playing_in'=> 1]
        ];
        
        //get name and id of last movie bought!
        $query = new \MongoDB\Driver\Query($filter, $options);
        $last_movie  = $manager->executeQuery('cinema_db.Movies', $query);
        $last_movie = $last_movie->toArray();

        $title = $last_movie[0]->title;
        $mov_id = (string)$last_movie[0]->_id;
        $playing_in = $last_movie[0]->playing_in;

        //find in which cinema
        $filter = [
            '_id' => new MongoDB\BSON\ObjectId( $last_movie[0]->playing_in)
        ];

        $options = [
            'projection' => ['name' => 1]
        ];
    
        $query = new \MongoDB\Driver\Query($filter, $options);
        $cinema  = $manager->executeQuery('cinema_db.Cinemas', $query);
        $cinema = $cinema->toArray();
        $cin_name = $cinema[0]->name;

        $ret_array = array(
            'title' => $title,
            'cinema' => $cin_name
        );
        
        //return to app logic
        echo json_encode($ret_array,true);

    }

    /**
     * A cinemaowner wants to buy a movie!
    */
    if (isset($_GET['add_movie']) && $_GET['add_movie'] == true){

        $start_date = strtotime($_GET['start_date']);
        $end_date = strtotime($_GET['end_date']);

        $filter = [
            'playing_in' => $_GET['playing_in'],
            'title' => $_GET['title'],
            'category' => $_GET['category'],
            'start_date' => new MongoDB\BSON\UTCDateTime($start_date*1000),
            'end_date' => new MongoDB\BSON\UTCDateTime($end_date*1000),   
            'owner_id' => $_GET['owner_id']
        ];
       
        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);
        $bulk->insert($filter);
        $result = $manager->executeBulkWrite('cinema_db.Movies', $bulk,$writeConcern);

        $count = $result->getInsertedCount();
        
        //get cinema name

        $filter = [
            '_id' => new MongoDB\BSON\ObjectId( $_GET['playing_in'])
        ];

        $options = [
            'projection' => ['name' => 1]
        ];
    
        $query = new \MongoDB\Driver\Query($filter, $options);
        $cinema  = $manager->executeQuery('cinema_db.Cinemas', $query);
        $cinema = $cinema->toArray();
        $cin_name = $cinema[0]->name;

        $ret_array = array(
            'count' => $count,
            'cin_name' => $cin_name
        );

        echo json_encode($ret_array,true);

    }

    /**
     * A cinemaowner wants to buy a cinema!
    */
    if (isset($_GET['add_cinema']) && $_GET['add_cinema'] == true){
        
        //first check if name already exists!
        $filter = [
            'name' => trim($_GET['cin_name'])
        ];
        $options = [];

        
        $query = new \MongoDB\Driver\Query($filter, $options);
        $cinema  = $manager->executeQuery('cinema_db.Cinemas', $query);
        $cinema = $cinema->toArray();
        
        //cinema does not exist! Hence, the owner can addid
        if(is_null($cinema[0]->name)){
            $filter = [
                'name' => trim($_GET['cin_name']),
                'owner_id' => trim($_GET['owner_id'])
            ];
           
            $bulk = new MongoDB\Driver\BulkWrite();
            $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);
            $bulk->insert($filter);
            $result = $manager->executeBulkWrite('cinema_db.Cinemas', $bulk,$writeConcern);
            
            //get the cin_id
            $filter = [
                'name' => trim($_GET['cin_name'])
            ];
            $options = [];
    
            
            $query = new \MongoDB\Driver\Query($filter, $options);
            $cinema  = $manager->executeQuery('cinema_db.Cinemas', $query);
            $cinema = $cinema->toArray();
            
            $ret_array = array(
                'count' => $result->getInsertedCount(),
                'cin_name' => trim($_GET['cin_name']),
                'cin_id' => (string)$cinema[0]->_id
            );

            //if count is 0 something went wrong!
            echo json_encode($ret_array,true);
        }
        else{
            $ret_array = array(
                'count' => -1
                
            );
            //cinema already exists!
            echo json_encode($ret_array,true);
        }

       
    }

    /**
     * A cinemaowner wants to delete a cinema!
    */
    if (isset($_GET['del_cinema']) && $_GET['del_cinema'] == true){
        $cin_id = trim($_GET['cin_id']);

        //get all Movies playing in this cinema
        $filter = [
            'playing_in' => $cin_id
        ];
        //fetch only _id column
        $options = [ 'projection' => ['_id' => 1] ];
        
        $query = new \MongoDB\Driver\Query($filter, $options);
        $movies  = $manager->executeQuery('cinema_db.Movies', $query);
        $movies_array = $movies->toArray();

       
        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);


        $deleted_favs = 0;
        $deleted_movies =0;
        //if there ara any movies in this cinema
        if(count($movies_array) != 0){

            //Delete all the favorites related to this cinema!
            foreach($movies_array as $movie){
                $mov_id = (string)$movie->_id;
                $filter = [
                    'movid' => $mov_id
                ];
                $bulk->delete($filter);
            }
            $result = $manager->executeBulkWrite('cinema_db.Favorites', $bulk, $writeConcern);
            $deleted_favs = $result->getDeletedCount();

            //delete all the movies playing in this cinema
            $filter = [
                'playing_in' => $cin_id
            ];
            $bulk = new MongoDB\Driver\BulkWrite();
            $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);

            $bulk->delete($filter);

            $result = $manager->executeBulkWrite('cinema_db.Movies', $bulk, $writeConcern);
            $deleted_movies = $result->getDeletedCount();

        }
       
        //delete finally the cinema
        $filter = [
            '_id' => new MongoDB\BSON\ObjectId( $cin_id)
        ];
        $bulk = new MongoDB\Driver\BulkWrite();
        $writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 100);

        $bulk->delete($filter);

        $result = $manager->executeBulkWrite('cinema_db.Cinemas', $bulk, $writeConcern);
        $deleted_cinemas = $result->getDeletedCount();

        //return
        $ret_array = array(
            'deleted_favs' => $deleted_favs,
            'deleted_movies' => $deleted_movies,
            'deleted_cinemas' => $deleted_cinemas
        );

        //return to app logic
        echo json_encode($ret_array,true);
    }

    
?>