<?php
    $arr_input =  array(
    'subject' => array(
        'entities' => [array(
            'id' => "5fad031a8ef6a0295698d826",
            'type' => 'Movie',
        )],
        'condition' => array(
            'attrs' => [ "start_date", "end_date", "still_playing" ]
        )
        
    ),
    'notification' => array(
        'http' => array('url' => 'http://172.18.1.14/catch_sub.php'),
        'attrs' => [ "start_date", "end_date", "still_playing" ]
    ),
    'throttling' => 5
    );

    $curl = curl_init();

    curl_setopt_array($curl, array(
        CURLOPT_URL => "http://orion:1026/v2/subscriptions",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS =>json_encode($arr_input,JSON_UNESCAPED_SLASHES),
        CURLOPT_HTTPHEADER => array(
        "Content-Type: application/json",
        "Cookie: pma_lang=en"
        ),
    ));
   
    $response = curl_exec($curl);

    $header_size = curl_getinfo($curl, CURLINFO_HEADER_SIZE);
    $header = substr($response, 0, $header_size);
    $body = substr($response, $header_size);
   
   curl_close($curl);
 
   echo $header;

?>