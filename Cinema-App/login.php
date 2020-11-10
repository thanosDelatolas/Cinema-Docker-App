<?php 
  /*
  * redirect to keyrock login!!!
  */
  
   require 'global_vars.php';
      
   $keyrock_url = $auth_url."?". http_build_query([
      'client_id' =>  $GLOBALS['client_id'],
      'response_type' => 'code',
      'state' => 'get_code',
      'redirect_uri' => $GLOBALS['redirect_uri'],     
   ]);
   session_start();
   if($_SESSION['role'] == 'USER' or $_SESSION['role'] == 'CINEMAOWNER'){
      header("location: ".$keyrock_url); 
      exit;
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
      Press <a href=<?php echo $keyrock_url; ?>>here</a> to login with Keyrock
      
   </h1>
</div>
<div class="down">
   <h1 clas="login_msg">   
      

   </h1>
</div>
    
</body>

</html>

