<?php
    session_start();   
    require 'global_vars.php';
    if(isset($_GET['code'])){
        
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
            'grant_type' => 'authorization_code',
            'code'    => $_GET['code'],
            'redirect_uri' => $GLOBALS['redirect_uri']
        ]));
    
        //make the request
        $result = curl_exec($curl);
        curl_close($curl);
        $result = json_decode($result);

        $_SESSION['access_token'] = $result->access_token ;
        $_SESSION['refresh_token'] = $result->refresh_token;

        header("Location: ".$GLOBALS['redirect_uri']);
    }
    else{
        //get user info
        $curl = curl_init();
        $url = $GLOBALS['user_info_url']."?" .http_build_query([
            'access_token' => $_SESSION['access_token']
        ]);
        curl_setopt($curl,CURLOPT_URL, $url);

        curl_setopt($curl, CURLOPT_HTTPGET, true);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER,true);
        $result = curl_exec($curl);
        curl_close($curl);
        $result = json_decode($result);
       
        $role = $result->roles[0]->name;
        $_SESSION['role'] = $role;
        $_SESSION['username'] = $result->username;
        $_SESSION['user_id'] = $result->id;
        $_SESSION['email'] = $result->email;
        $_SESSION['loggedin'] = true;
       

        require 'server_lib.php';

        check_redirect('welcome'); 

        //does not redirects so its either user or admin

    }

    
?>

<!DOCTYPE html>
<html>

<head> 
   
    <link rel="stylesheet" type="text/css" href="app_style/welcome_page.css"> 
    <link rel="stylesheet" type="text/css" href="app_style/sidebar.css"> 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <title>Main page</title>
</head>
       
<script src="app_js/basic_utilities.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


<body>

    <div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()" onmouseout="toggleSidebar()">
        <a href="#"><span><i class="fa fa-file-movie-o"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Movies</span></a><br>
        <a href="#"><span><i class='fas fa-user-tie'></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Owner</span></a><br>
    </div>

    <div id="main">
        <fieldset class="user_details">
            <legend>Your info:</legend>
            <table>
                <tr>
                    <td>Username:&nbsp;</td>
                    <td><?php echo $_SESSION['username']; ?></td>
                </tr>
                
                <tr>
                    <td>Email:&nbsp;</td>
                    <td><?php echo trim($_SESSION['email']); ?></td>
                
                </tr>
                <tr>
                    <td>User role:&nbsp;</td>
                    <td><?php echo trim($_SESSION['role']); ?></td>
                </tr>

                
            </table>
        </fieldset>
    </div>

    
</body>

</html>