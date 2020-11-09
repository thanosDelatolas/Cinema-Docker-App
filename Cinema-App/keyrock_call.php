<?php
    // login to authorize a user
    $keyrock_service = "http://172.18.1.5:3000/v1/auth/tokens";

    /*Set timezone */
    date_default_timezone_set("Europe/Athens");

    function keyrcok_call($email,$password){
        //Initialize a cURL session
        $curl = curl_init($keyrock_service);

        $postData = array(
            'name' => $email,
            'password' => $password,
            
        );
       
        

        $credentials = json_encode($postData);
        $headers = array(
            'Content-Type: application/json', 
        );
      

        $options = array(
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_POSTFIELDS => $credentials,
            CURLOPT_HTTPHEADER => $headers,
            CURLOPT_FOLLOWLOCATION => true,
        );
        curl_setopt_array($curl, $options);

        // grab URL and pass it to the browser
        $result = curl_exec($curl);
        //echo $result;

        // close cURL resource, and free up system resources
        //curl_close($curl);
        echo curl_errno($curl);
        print curl_error($curl);

        $info = curl_getinfo($curl);
        $response_info = $info['http_code'];

        echo "<br>".$response_info;
        
        
    }
?>