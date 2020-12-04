<?php
    /**
     * Page only for users! 
    */
    include '../server_lib.php';
    
    session_start();
    check_redirect('movies');
?>

<!DOCTYPE html>
<html>
<head> 
    <link rel="stylesheet" type="text/css" href="../app_style/movies.css"> 
    <link rel="stylesheet" type="text/css" href="../app_style/sidebar.css"> 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!-- Add jquery -->
    <link rel="icon" type="image/png" sizes="32x32" href="../favicon/favicon.ico">
    <title>Movies</title>
</head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<!--welcome_page.js has the toogleSidebar function -->
<script src="../app_js/basic_utilities.js"></script>

<!--movies_page.js has the 
    -> search_movies function 
-->
<script src="../app_js/movies_page.js"></script>

<!--movies_jquery.js has the 
    -> REQUESTS TO APP-LOGIC
-->
<script src="../app_js/movies_jquery.js"></script>


<body>
    <div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()" onmouseout="toggleSidebar()">
            <a href="http://172.18.1.9/welcome.php"><span><i class="fa fa-home"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Home</span></a><br>
            
            <a onclick='logout()' class="bottom_fa" ><span><i class="fas fa-sign-out-alt"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Log out</span></a><br>
        </div>

    <div id="main" >
        
        <!-- create seachable table -->
        <input type="text" id="mov_search" class="search" onkeyup="search_movies()" placeholder="Search for favorite movies..">
        <table id="searchable_table">
            <tr class="header">
                <th >Title</th>
                <th>Cinema</th>
                <th>Category</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Favorites</th>
            </tr>
            <?php
                
                //time to make GET-request in the rest API to take favorites of this user!!
                require '../make_request.php';
                //get movies with curl GET request!! (REST API)
                $movies = get_movies();
                
                //get favorites of the user with curl GET request(REST API)
                $favorites = get_favorites($_SESSION['user_id']);
                
                $row_num=1;
                if (is_array($movies) || is_object($movies)){

                    foreach($movies as $curr_movie) {
                        $is_favorite=false;
                        if(is_array($favorites) || is_object($favorites)){
                            //see if current movie is in favorites!
                            foreach($favorites as $fav){
                                if($curr_movie["oid"] == $fav["movid"]){
                                    $is_favorite = true;
                                    break;
                                }
                            }
                        }
                       
    
                       $table_row= "<tr id= row_".intval($row_num).">"
                        ."<td name ='title'>".$curr_movie["title"]."</td>".
                        "<td name='cinema'>".$curr_movie["playing_in"]."</td>"
                        ."<td name ='category'>".$curr_movie["category"]."</td>"
                        ."<td name ='start_d'>".$curr_movie["start_date"]."</td>"
                        ."<td name ='end_d'>".$curr_movie["end_date"]."</td>"
                        //hidden user_id,mov_id for curl requests!
                        ."<td name='user_id' hidden='true'>".$_SESSION['user_id']."</td>"
                        ."<td name='mov_id' hidden='true'>".$curr_movie["oid"]."</td>";
                        //must add favorites and </td>
    
                        //ids to be recognized from jquery
                        if($is_favorite == true){
                            $table_row = $table_row."<td class='icon'>
                            <button class="."ic_fav"." id="."fav_".intval($row_num).">
                            <i class='fa fa-heart'></i></button>"."</td>"
                            ."</tr>";
                        }
                        else{
                            $table_row = $table_row."<td class='icon'>
                            <button class="."ic"."  id="."fav_".intval($row_num).">
                            <i class='fa fa-heart'></i></button>"."</td>" 
                            ."</tr>";
    
                        }
                        echo $table_row;
                        $row_num =  $row_num + 1;
    
                    }
                }
           
            ?>  
            
        </table>

       
    </div>
</body>
   

    
</html>
