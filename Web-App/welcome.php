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
        <input type="text" id="mov_search" class="search" onkeyup="search_notifications()" placeholder="Search in your notifications...">
                <table id="news_feed_table">
                    
                    <tr class="header">
                        <th scope="col" class = 'left_header'></th>
                        <th scope="col">Cinema</th>
                        <th scope="col">Category</th>
                        <th scope="col">Start Date</th>
                        <th scope="col">End Date</th>
                    </tr>
                    <?php 
                        $news = get_feed($_SESSION['user_id']);
                        //var_dump($news);
                        //TODO: UPDATE FEED AND DELETE ENTITY!!
                        if(is_array($news) || is_object($news)){
                            foreach ($news as $n) {
                                $table_row = "<tr>"
                                            ."<th class='left' scope='row'> News for: ".$n['title']."</th>"
                                            ."<td name='cin_name'>".$n['cin_name']."</td>"
                                            ."<td name='category'>".$n['category']."</td>"
                                            ."<td name='start_date'>".$n['start_date']."</td>"
                                            ."<td name='end_date'>".$n['end_date']."</td>"
                                            ."<td name='mov_id' hidden = 'true'>".$n['mov_id']."</td>"
                                            ."</tr>";
                                echo $table_row;
                               
                            }
                        }
                    ?>
                </table>
            <?php

        }

    ?>
        

    </div>

    
</body>

</html>