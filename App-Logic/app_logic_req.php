<?php
    header("Access-Control-Allow-Origin: *");
    
   
    /**
     * 
     * In this file is implmented the rest api between App-Logic and Data storage!  
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
        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => 'http://172.18.1.15:1026/v2/subscriptions/'.$response->subID,
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'DELETE',
        ));
        
        curl_exec($curl);
        curl_close($curl);
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

        //return response
        echo $response;  
    }
    // a cinema owner wants to delte a movie
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

        //return response
        echo $response;  
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

        //return response
        echo $response;  
    }


    /**
     * A cinemaowner wants to buy a movie!
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




?>