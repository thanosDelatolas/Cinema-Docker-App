<?php
    /**
     * 
     * In this file is implmented the rest api between App-Logic and Data storage!  
     * 
    */
    require 'global_vars.php';

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

        //return response
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

?>