<?php
    header("Access-Control-Allow-Origin: *");
    
   
    /**
     * 
     * In this file is implmented the rest api between App-Logic and Data storage!  
     * 
     * This file forward the requests from Web-App to Data-Storage but also,
     * makes request to orion in order to keep everything up to date!!
     * 
    */
    require 'global_vars.php';

    
    /**
     * 
     * In this file is implmented are made function to communicate wit orion
     * 
    */
    require 'orion_request.php';

    /**
     * Web-App wants the movies!
     * make GET request to data storage to get all the movies!
     */
    if (isset($_GET['get_movies']) && $_GET['get_movies'] == true){
        
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'get_movies' => true, //a flag to execute the right code in App-Logic! 
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //response tp jquery
       echo $response;

    }


    /**
     * Web-App wants the favorites of a user!
     * make GET request to data storage to get all the favorites based on a user_id!
     */
    if (isset($_GET['get_favorites']) && $_GET['get_favorites'] == true){
        
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'get_favorites' => true, //a flag to execute the right code in App-Logic! 
            'user_id' => $_GET['user_id']
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //return response
        echo $response;

    }

    /**
     * Request from Web-App to remove from favorites (when a heart button is clicked!)
     *      => removes favorite from Data Storage
     *      => removes the subscription!
     */
    if (isset($_POST['remove_fav']) && $_POST['remove_fav'] == true){
     
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'remove_fav' => true, //a flag to execute the right code in App-Logic! 
            'user_id' => $_POST['user_id'],
            'mov_id' => $_POST['mov_id']
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        $response = json_decode($response);
        
        $favs_removed = $response->deletedCount;
        file_put_contents('php://stdout', print_r("\n", TRUE));
        file_put_contents('php://stdout', print_r("**************** SUB TO BE DELETED: *******************\n", TRUE));
        file_put_contents('php://stdout', print_r($response->subID, TRUE));
        file_put_contents('php://stdout', print_r("*******************************************************\n", TRUE));
      
        
        /**
         *  curl request to orion!
         *  to delete this subscription!
         */
        unsubscribe($response->subID);
        echo $favs_removed;   
    }

    /**
     * Request from Web-App to add to favorites (when a heart button is clicked!)
     * This routine does:
     *      => add favorites to data storage 
     *      => subscribe for this movie!
     */
    if (isset($_POST['add_fav']) && $_POST['add_fav'] == true){
                
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'add_fav' => true, //a flag to execute the right code in App-Logic! 
            'user_id' => $_POST['user_id'],
            'mov_id' => $_POST['mov_id']
        ]);
        
        
        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        if($response >0){
            /**
             * function in orion_request
             * if something goes wron with subscription the user just will not be notified!
             */ 
            subscribe($_POST['user_id'],$_POST['mov_id']);
        }

        
        echo $response;

    }

    /**
     * Request from Web-App to fetch all data of a CINEMAOWNER
    */
    if (isset($_GET['get_owner_data']) && $_GET['get_owner_data'] == true){
     
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'get_owner_data' => true, //a flag to execute the right code in App-Logic! 
            'user_id' => $_GET['user_id'],
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //return response
        echo $response;  
    }


    /**
     * Request from Web-App to fetch only Cinmas
    */
    if (isset($_GET['get_cinemas']) && $_GET['get_cinemas'] == true){
     
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'get_cinemas' => true, //a flag to execute the right code in App-Logic! 
            'owner_id' => $_GET['owner_id'],
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //return response
        echo $response;  
    }

    /**
     * Request from Web-App to modify movie
     * updates orion also!!
    */
    if (isset($_POST['modify_movie']) && $_POST['modify_movie'] == true){
     
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'modify_movie' => true, //a flag to execute the right code in App-Logic! 
            'mov_id' => $_POST['mov_id'],
            'playing_in' => $_POST['playing_in'],
            'title' => $_POST['title'],
            'category' => $_POST['category'],
            'start_date' => $_POST['start_date'],
            'end_date' => $_POST['end_date']
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        /**
         * if Data storage successfuly modified this movie 
         * update entity in orion also!!
         */ 
        $res = json_decode($response);
        if($res->count > 0){
            /**
             * send request to orion to update this entity
             */
            update_entity(trim($_POST['mov_id']),$res->playing_in,$res->start_date,
                $res->end_date,$res->title,$res->category
            );

        }

        //return response
        echo $response;  
    }
    // a cinema owner wants to delete a movie
    if (isset($_POST['del_movie']) && $_POST['del_movie'] == true){
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'del_movie' => true, //a flag to execute the right code in App-Logic! 
            'mov_id' => $_POST['movid']
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        $res = json_decode($response);
        $arr = $res->subs;
        file_put_contents('php://stdout', print_r("***************** RES to be removed: ******************\n", TRUE));
        file_put_contents('php://stdout', print_r($arr, TRUE));
        file_put_contents('php://stdout', print_r("\n", TRUE));
        file_put_contents('php://stdout', print_r("******************** MOVIES removed: ******************\n", TRUE));
        file_put_contents('php://stdout', print_r($res->deleted_movie_count, TRUE));
        file_put_contents('php://stdout', print_r("\n", TRUE));
        file_put_contents('php://stdout', print_r("*******************************************************\n", TRUE));

        
        /**
         * send request to orion to delete the subscriptions 
         */
        if(is_array($arr)){
            

            foreach($arr as $s){
                file_put_contents('php://stdout', print_r("***************** SUB to be removed: ******************\n", TRUE));
                file_put_contents('php://stdout', print_r($s, TRUE));
                file_put_contents('php://stdout', print_r("\n", TRUE));
                file_put_contents('php://stdout', print_r("*******************************************************\n", TRUE));
                unsubscribe($s);
                file_put_contents('php://stdout', print_r("\n", TRUE));
            }

        }
        if($res->deleted_movie_count > 0){
            // now send request to orion to delete the movie!!!
            remove_entity($_POST['movid']);
        }

        //return deleted movies count
        echo $res->deleted_movie_count;
  
    }


    /**
     * Returns last movie which is inserted in any of a CINEMAOWNER'S cinemas
    */
    if (isset($_GET['get_last_movie']) && $_GET['get_last_movie'] == true){
     
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'get_last_movie' => true, //a flag to execute the right code in App-Logic! 
            'owner_id' => $_GET['owner_id'],
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);
        
        echo $response;  
    }


    /**
     * A cinemaowner wants to buy a movie!
     * create a new entity in orion also!
    */
    if (isset($_POST['add_movie']) && $_POST['add_movie'] == true){
     
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'add_movie' => true, //a flag to execute the right code in App-Logic! 
            'playing_in' => $_POST['playing_in'],
            'title' => $_POST['title'],
            'category' => $_POST['category'],
            'start_date' => $_POST['start_date'],
            'end_date' => $_POST['end_date'],
            'owner_id' => trim($_POST['owner_id'])
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        $res = json_decode($response);
        
        file_put_contents('php://stdout', print_r("\n", TRUE));
        file_put_contents('php://stdout', print_r("************************ MOV: *************************\n", TRUE));
        file_put_contents('php://stdout', print_r($res, TRUE));
        file_put_contents('php://stdout', print_r("*******************************************************\n", TRUE));
        
        /**
         * if data storage succesfully added this movie
         * create an entity in orion with curl request!
         */
        if($res->count > 0){
            create_entity($res->mov_id,$res->cin_name,
                $_POST['start_date'],$_POST['end_date'],$_POST['title'],$_POST['category']
            );
        }

        //return response
        echo $response;  
    }

    /**
     * A cinemaowner wants to buy a cinema!
    */
    if (isset($_POST['add_cinema']) && $_POST['add_cinema'] == true){

        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'add_cinema' => true, //a flag to execute the right code in App-Logic! 
            'cin_name' => $_POST['cin_name'],
            'owner_id' => $_POST['owner_id']
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //return response
        echo $response; 

    }

    /**
     * A cinemaowner wants to delete a cinema!
     * this method isn't implemented because of orion
     * the cinema owner cannot delete a cinema
    */
    
    if (isset($_POST['del_cinema']) && $_POST['del_cinema'] == true){

        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'del_cinema' => true, //a flag to execute the right code in App-Logic! 
            'cin_id' => trim($_POST['cin_id'])
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //return response
        echo $response; 

    }
    

    /**
     * This request is called from a user only when the page is loaded
     * after that another request is called!
     */
    if (isset($_GET['get_feed']) && $_GET['get_feed'] == true){

        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'get_feed' => true, 
            'user_id' => trim($_GET['user_id'])
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //return response
        echo $response; 
    }

    /**
     * request to update user feed every 5 seconds!
     */
    if (isset($_POST['get_new_notifications']) && $_POST['get_new_notifications'] == true){
        $ch = curl_init();
        $url = $GLOBALS['Data-Storage']."?" .http_build_query([
            'get_new_notifications' => true, 
            'user_id' => trim($_POST['user_id'])
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        //return response
        echo $response; 
    }




?>