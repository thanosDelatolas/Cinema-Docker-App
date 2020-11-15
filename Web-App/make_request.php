<?php
    require 'global_vars.php';

    /**
     * This file makes request to App-Logic for USERS and CINEMAOWNERS
    */

    /**
     * returns all the movies
    */
    function get_movies(){
        $ch = curl_init();
        $url = $GLOBALS['App-Logic']."?" .http_build_query([
            'get_movies' => true, //a flag to execute the right code in App-Logic! 
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        return json_decode($response,true);

    }


    /**
     * returns all the favorites based on user_id
    */
    function get_favorites($user_id){
        $ch = curl_init();
        $url = $GLOBALS['App-Logic']."?" .http_build_query([
            'get_favorites' => true, //a flag to execute the right code in App-Logic! 
            'user_id' => $user_id,
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        return json_decode($response,true);

    }

    /**
     * Returns all movies playing in all of his/her cinemas
     */
    function get_owner_data($user_id){
        $ch = curl_init();
        $url = $GLOBALS['App-Logic']."?" .http_build_query([
            'get_owner_data' => true, //a flag to execute the right code in App-Logic! 
            'user_id' => $user_id,
        ]);

        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);

        return json_decode($response,true);

    }


?>