<?php
    session_start();   
    require 'global_vars.php';
    require 'server_lib.php';
    require 'make_request.php';

    check_redirect('welcome'); 

    //does not redirects so its either user or admin

    
?>

<!DOCTYPE html>
<html>

<head> 
   
    <link rel="stylesheet" type="text/css" href="app_style/welcome_page.css"> 
    <link rel="stylesheet" type="text/css" href="app_style/welcome_page_user.css">
    <link rel="stylesheet" type="text/css" href="app_style/sidebar.css"> 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!-- Add jquery -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon.ico">
    <title>Main page</title>
</head>
       
<script src="app_js/basic_utilities.js"></script>

<script src='https://kit.fontawesome.com/a076d05399.js'></script>


<body>

    <div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()" onmouseout="toggleSidebar()">
        <a href="http://172.18.1.9/user_pages/movies.php"><span><i class="fa fa-file-movie-o"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Movies</span></a><br>
        <a href="http://172.18.1.9/owner_pages/owner.php"><span><i class='fas fa-user-tie'></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Owner</span></a><br>
        <a onclick='logout()' class="bottom_fa" ><span><i class="fas fa-sign-out-alt"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Log out</span></a><br>
    </div>

    <div id="main"> 
    <?php
        if ( $_SESSION['role']=="CINEMAOWNER" ) {
            ?>
                <!-- HTML GOES HERE -->
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
            <?php
        }
        else {
            ?>  
                <!-- ONLY FOR USERS THIS SCRIPT! -->
                <script src="app_js/feed_jquery.js"></script>
                <!-- HTML GOES HERE -->
                <h1 id="user_id" hidden='true'> <?php echo $_SESSION['user_id']; ?> </h1>
                <h1 class="mytitle">You can see all your notifications, <?php echo $_SESSION['username']; ?></h1>

            
                <div class="float-container">
               
                    <div id="container" >
                        <table id="stop_playing_table">
                            <caption> <h1 class="stop_playing_tilte">Stop playing... &nbsp;&nbsp; <i class='far fa-sad-tear' style="font-size:29px"></i>  </h1> </caption>
                            <tr class="header">
                                <th scope="col" class = 'left_header'></th>
                                <th scope="col">Where?</th>
                                <th scope="col">When?</th>
                                <th scope="col">Received:</th>
                            </tr>
                        
                            <?php 
                                $news = get_feed($_SESSION['user_id']);
                            
                            
                                if(is_array($news) || is_object($news)){
                                    foreach ($news as $n) {
                                        if($n['stop_playing']=="1"){
                                            $table_row = "<tr>"
                                                ."<th class='left' scope='row'> News for: ".$n['title']."</th>"
                                                ."<td name='cin_name'>".$n['cin_name']."</td>"
                                                ."<td name='end_date'>".$n['end_date']."</td>"
                                                ."<td name='received'>".$n['received']."</td>"
                                                ."<td name='mov_id' hidden = 'true'>".$n['mov_id']."</td>"
                                                ."</tr>";
                                            echo $table_row;
                                        }
                                        
                                    
                                    }
                                }
                            ?>
                            
                        </table>
                    </div>
                    <div id="cont_soon_container" >
                 
                        <!-- Div for coming soon table!-->
                        <table id="coming_soon_table">
                    
                            <caption><h1 class="comming_soon_title">Coming Soon!&nbsp;&nbsp;<i class="far fa-grin-hearts" style="font-size:29px"></i></h1> </caption>
                            <tr class="header">
                                <th scope="col" class = 'left_header'></th>
                                <th scope="col">Where?</th>
                                <th scope="col">When?</th>
                                <th scope="col">Unitl:</th>
                                <th scope="col">Received:</th>
                            </tr>
                        
                            <?php 
                                                        
                            
                                if(is_array($news) || is_object($news)){
                                    foreach ($news as $n) {
                                        if($n['soon']=="1"){
                                            $table_row = "<tr>"
                                                ."<th class='left' scope='row'> News for: ".$n['title']."</th>"
                                                ."<td name='cin_name'>".$n['cin_name']."</td>"
                                                ."<td name='end_date'>".$n['start_date']."</td>"
                                                ."<td name='end_date'>".$n['end_date']."</td>"
                                                ."<td name='received'>".$n['received']."</td>"
                                                ."<td name='mov_id' hidden = 'true'>".$n['mov_id']."</td>"
                                                ."</tr>";
                                            echo $table_row;
                                        }
                                        
                                    }
                                }
                ?>
                        
                        </table>
                
                <?php

            }

        ?>
        

            </div>

</div>
               
                
                
                

    
</body>

</html>