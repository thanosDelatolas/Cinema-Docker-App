<?php
    
    
    if (isset($_GET['login'])) {
        $url = "http://172.18.1.8/app_logic_web_app_api.php?login=login&email=owner2@test.com&password=1234";
        $ch = curl_init($url);
        
        curl_setopt($ch, CURLOPT_HTTPGET, true);
       
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
       
        
        $response = curl_exec($ch);
        curl_close($ch);
        echo $response;
        
    }
?>

<!DOCTYPE html>
<html>

<head> 
   
   <link rel="stylesheet" type="text/css" href="app_style/login_page.css"> 
   <title>Login page</title>
</head>
      
<body>
<div class ="center">
   <h1 class="home-title">
      Welcome to TD Cinemas.. <br>
      Press <a href="index.php?login=true">here</a> to login with Keyrock
      
   </h1>
</div>
<div class="down">
   <h1 clas="login_msg">   
      

   </h1>
</div>
    
</body>

</html>
