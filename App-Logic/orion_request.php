<?php
    /**
     * This file makes requests to orion!!
     */

    /**
     * subscribe to a movie!
     * In the description of the subscription I have the user_id. 
     */
    function subscribe($user_id,$mov_id){

        $sub_array =  array(
            //description has the user id for my convenience :)
            'description' => trim($user_id),
            'subject' => array(
                'entities' => [array(
                    //subscribe to movie with id mov_id
                    'id' => trim($mov_id),
                    'type' => 'Movie',
                )],
                'condition' => array(
                    'attrs' => [ 
                        "start_date",
                        "end_date",
                        "cin_name",
                        "title",
                        "category"
                    ]
                )
                
            ),
            'notification' => array(
                //always catch notification in this url!
                'http' => array('url' => 'http://172.18.1.8/orion_notification.php'),
                'attrs' => [ 
                    "start_date",
                    "end_date",
                    "cin_name",
                    "title",
                    "category"
                ]
            ),
            'throttling' => 5,
            //expires in 2050
            'expires' => '2050-01-01T14:00:00.00Z'
        );
        // send the request!
        $curl = curl_init();

        curl_setopt_array($curl, array(
            //orion is in this url
            CURLOPT_URL => "http://orion:1026/v2/subscriptions",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_HEADER => true, //to get response header!
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS =>json_encode($sub_array,JSON_UNESCAPED_SLASHES),
            CURLOPT_HTTPHEADER => array(
            "Content-Type: application/json"
            ),
        ));
   
        curl_exec($curl);
        curl_close($curl);
    }
?>