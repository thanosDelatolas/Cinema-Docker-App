<?php
    require 'global_vars.php';
    
    /**
     * This file receives login requests from Web-App and specifically from index.php
     * 
     * $_GET['login'] =>  login with keyrock with password and email from keyrock!
     * 
     * This file alse receives request to register a user from Web-App
     * 
    */
    
    if (isset($_GET['login']) && $_GET['login'] == 'login') {

        $authorization = base64_encode($GLOBALS['client_id'].":". $GLOBALS['client_secret']);

        //Initialize a cURL session
        $curl = curl_init();

        curl_setopt($curl,CURLOPT_URL, $GLOBALS['access_token_url']);
        
        curl_setopt($curl, CURLOPT_HTTPHEADER, array(
            'Authorization: Basic '.$authorization,
            'Content-Type: application/x-www-form-urlencoded'
        ));

        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER,true);
        
        curl_setopt($curl,CURLOPT_POSTFIELDS, http_build_query([
            'grant_type' => 'password',
            'username'    => $_GET['email'],
            'password' => $_GET['password'],
            'scope' => 'permanent'
        ]));
    
        //make the request
        $result = curl_exec($curl);
        curl_close($curl);
        $result= json_decode($result);
        
       
        $access_token = $result->access_token;
        $refresh_token = $result->refresh_token;
        
        //get user info
        $curl = curl_init();
        $url = $GLOBALS['user_info_url']."?" .http_build_query([
            'access_token' => $access_token
        ]);

        curl_setopt($curl,CURLOPT_URL, $url);

        curl_setopt($curl, CURLOPT_HTTPGET, true);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER,true);
        $result = curl_exec($curl);
        curl_close($curl);

        $result = json_decode($result);

        $array = array(
            "access_token" => $access_token, 
            "refresh_token" => $refresh_token,
            "role" => $result->roles[0]->name,
            "username" => $result->username,
            "email" => $result->email,
            "user_id" => $result->id
        );

        //return to app logic
        echo json_encode($array);

    }


    if (isset($_GET['register']) && $_GET['register'] == true) {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://172.18.1.5:3005/v1/auth/tokens',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_HEADER => true,

            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_encode(array (
                "name" => "tdel@test.com",
                "password" => "1234"
            )),
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json',
            ),
        ));

        $response = curl_exec($curl);

        /**
         * get response headers
         * 
         * don't ask about the indexes :p 
         */ 
        $header_size = curl_getinfo($curl, CURLINFO_HEADER_SIZE);
        $header = substr($response, 20, $header_size-20);
        
        curl_close($curl);

        //get token
        $pieces = explode(":", $header);
        $token = $pieces[14];
        $pieces = explode("\n", $token);

        $token = trim($pieces[0]);

        file_put_contents('php://stdout', print_r("\n***************** AUTH TOKEN : **********************\n", TRUE));
        file_put_contents('php://stdout', print_r($token, TRUE));
        file_put_contents('php://stdout', print_r("\n*****************************************************\n", TRUE));
        
        //make request to keyrock to create this user
        
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://172.18.1.5:3005/v1/users',
            CURLOPT_RETURNTRANSFER => true,

            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_encode(array (
                "user" => array(
                    "username" => $_GET['username'],
                    "email" => $_GET['email'],
                    "password" => $_GET['password']
                ),
                
            )),
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json',
                'X-Auth-token: '.$token, //the previously received token!
            ),
        ));

        $response = curl_exec($curl);
        curl_close($curl);

       
        $response = json_decode($response);

        //sucessfully created!
        if(!is_null($response->user)){
            $user = $response->user;
            file_put_contents('php://stdout', print_r("\n**************** CREATED USER : ********************\n", TRUE));
            file_put_contents('php://stdout', print_r($user->id, TRUE));
            file_put_contents('php://stdout', print_r("\n*****************************************************\n", TRUE));
            
            //assign role!

            $keyrock_role_id =  ($_GET['role'] == 'USER') ?  $GLOBALS['USER_ROLE_ID'] : $GLOBALS['OWNER_ROLE_ID'];
        
            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => 'http://172.18.1.5:3005/v1/applications/'.$GLOBALS['client_id'].'/users/'.$user->id.'/roles/'.$keyrock_role_id ,
                CURLOPT_RETURNTRANSFER => true,

                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
               
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json',
                    'X-Auth-token: '.$token, //the previously received token!
                ),
            ));

            $res = curl_exec($curl);
            curl_close($curl);
            file_put_contents('php://stdout', print_r("\n**************** ROLE Added : ********************\n", TRUE));
            file_put_contents('php://stdout', print_r($res, TRUE));
            file_put_contents('php://stdout', print_r("\n*****************************************************\n", TRUE));
            $res = json_decode($res);

            if(!is_null($res->role_user_assignments)){
                $ret_array = array(
                    'created' => true
                );
                echo json_encode($ret_array,true);
            }
            else {
                $ret_array = array(
                    'went_wrong' => true
                );
                echo json_encode($ret_array,true);
            }
    
            
        }
        //this user already exists!!!
        else if($response->error->message == "Email already used"){

            
            $ret_array = array(
                'inv_email' => true
            );
            echo json_encode($ret_array,true);
        }
        //something went wrong
        else {
            $ret_array = array(
                'went_wrong' => true
            );
            echo json_encode($ret_array,true);
        }
    }
    

?>