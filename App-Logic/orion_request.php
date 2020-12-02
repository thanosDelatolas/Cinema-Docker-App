<?php
    /**
     * This file makes requests to orion!!
     */

    /**
     * subscribe to a movie!
     * In description I have user id for my convenience!
     */
    function subscribe($user_id,$mov_id){

        $sub_array =  array(
            'description' => trim($user_id),
            'subject' => array(
                'entities' => [array(
                    //subscribe to movie with id mov_id
                    'id' => trim($mov_id),
                    'type' => 'Movie',
                )],
                'condition' => array(
                    'attrs' => [ 
                        //notify only on these changes!
                        "soon",
                        "playing_now"
                    ]
                )
                
            ),
            'notification' => array(
                //always catch notification in this url!
                'http' => array('url' => 'http://172.18.1.8/orion_notification.php'),
                'attrs' => [ 
                    //bring all attributes back to be displayed
                    "start_date",
                    "end_date",
                    "cin_name",
                    "title",
                
                    "soon",
                    "playing_now"
                ]
            ),
            //expires in 2050
            'expires' => '2050-01-01T14:00:00.00Z'
        );
        // send the request!
        $curl = curl_init();

        curl_setopt_array($curl, array(
            //orion is in this url
            CURLOPT_URL => "http://orion_proxy:1027/v2/subscriptions",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_HEADER => true, //to get response header!
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS =>json_encode($sub_array,JSON_UNESCAPED_SLASHES),
            CURLOPT_HTTPHEADER => array(
            "Content-Type: application/json",
            "X-Auth-Token: magic_key",
            ),
        ));
   
        curl_exec($curl);
        curl_close($curl);
    }

    /**
     *  curl request to orion!
     *  to delete this subscription!
     */
    function unsubscribe($subID){
       
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://orion_proxy:1027/v2/subscriptions/'.$subID,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'DELETE',
            CURLOPT_HTTPHEADER => array(
                'X-Auth-Token: magic_key',
            ),
        ));
        
        curl_exec($curl);
        curl_close($curl);
    }
    
    /**
     * function to make request to orion to UPDATE an entity!
     */
    function update_entity($mov_id,$cin_name,$start_date,$end_date,$title){

        /**
         * get entity attrs
         */
        $arr_input = get_entity_attrs($mov_id,$cin_name,$start_date,$end_date,$title);
        
        $arr = array(
            'start_date' => $start_date,
            'end_date' => $end_date,
            'cin_name' => $cin_name,
            'soon' => $arr_input['soon'],
            'playing_now' => $arr_input['playing_now'],
            'title' => $title
        );
        $curl = curl_init();
    
        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://orion_proxy:1027/v2/entities/".$mov_id."/attrs?options=keyValues",
            CURLOPT_HEADER => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CUSTOMREQUEST => "PATCH",
            CURLOPT_POSTFIELDS => json_encode($arr),
            CURLOPT_HTTPHEADER => array(
                "Content-Type: application/json",
                "X-Auth-Token: magic_key",
            ),
        ));
    
        $response = curl_exec($curl);
    
        curl_close($curl);

    }

    /**
     * function to make request to orion to CREATE AN ENTITY
    */
    function create_entity($mov_id,$cin_name,$start_date,$end_date,$title){
        
        /**
         * get get entity attrs
         */ 
        $arr_input = get_entity_attrs($mov_id,$cin_name,$start_date,$end_date,$title);
       
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "http://orion_proxy:1027/v2/entities?options=keyValues",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode($arr_input,true),
            CURLOPT_HTTPHEADER => array(
                "Content-Type: application/json",
                "X-Auth-Token: magic_key",
            
            ),
        ));
    
        $response = curl_exec($curl);
        
    
        curl_close($curl);
    }

    /**
     * this function sends request to orion to remove a Movie(an entity)
     */
    function remove_entity($mov_id){
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://orion_proxy:1027/v2/entities/'. trim($mov_id) .'?type=Movie',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'DELETE',
            CURLOPT_HTTPHEADER => array(
                "X-Auth-Token: magic_key"
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
    }

    /**
     * returns an array with attrs of the new orion entity
     */
    function get_entity_attrs($mov_id,$cin_name,$start_date,$end_date,$title){
        $start_date_time = new DateTime($start_date);
        $end_date_time = new DateTime($end_date);

        /**
         * check if movie is played now!
         */

        $now = new DateTime();

        $now_interval_end_date = $now->diff($end_date_time);

        $now_interval_start_date = $now->diff($start_date_time);
        
        $diff = $now_interval_end_date->format('%R%a');

        $diff_1 = $now_interval_start_date->format('%R%a');
        
        /**
         * to be played now we want start_date <= now!
         */
        if($diff >=0 && $diff_1 <=0 ){
            $playing_now = true;
        }
        else{
            $playing_now = false;
        }

        
        /**
         * movies to be played soon
         */
        if( ($diff_1>=0 && $diff_1<=30) && ($playing_now == false)){
            $soon = true;
        }
        else {
            $soon = false;
        }
        $arr_input =  array(
            'id' => $mov_id,
            'type' => "Movie", 
            'soon' => $soon,  
            'playing_now' => $playing_now,  
            'title' => $title,
            'cin_name' => $cin_name,
            'start_date' => $start_date,
            'end_date' => $end_date,
            
        );
        return $arr_input;
    }

?>