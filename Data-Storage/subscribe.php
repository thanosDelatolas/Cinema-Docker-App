<?php
    $arr_input =  array(
        'description' => 'subscription for movie',
        'subject' => array(
            'entities' => [array(
                'id' => "5fad031a8ef6a0295698d826",
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
      
        'expires' => '2040-01-01T14:00:00.00Z'
    );

    $curl = curl_init();

    curl_setopt_array($curl, array(
        CURLOPT_URL => "http://orion:1026/v2/subscriptions",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_HEADER => true, //to get response header!
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS =>json_encode($arr_input,JSON_UNESCAPED_SLASHES),
        CURLOPT_HTTPHEADER => array(
        "Content-Type: application/json"
        ),
    ));
   
    $response = curl_exec($curl);

    $header_size = curl_getinfo($curl, CURLINFO_HEADER_SIZE);
    $header = substr($response, 0, $header_size);
    $body = substr($response, $header_size);
   
   curl_close($curl);
 
   echo $header;

?>