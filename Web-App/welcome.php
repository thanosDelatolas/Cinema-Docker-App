<?php
    session_start();   
    require 'global_vars.php';
    require 'server_lib.php';

    check_redirect('welcome'); 

    //does not redirects so its either user or admin

    
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
        <a href="http://localhost/user_pages/movies.php"><span><i class="fa fa-file-movie-o"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Movies</span></a><br>
        <a href="http://localhost/owner_pages/owner.php"><span><i class='fas fa-user-tie'></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Owner</span></a><br>
        <a onclick='logout()' class="bottom_fa" ><span><i class="fas fa-sign-out-alt"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Log out</span></a><br>
    </div>

    <div id="main">
        <fieldset class="user_details">
            <legend>Your info:</legend>
            <table>
                <tr>
                    <td>Username:&nbsp;</td>
                    <td><?php echo trim($_SESSION['username']); ?></td>
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