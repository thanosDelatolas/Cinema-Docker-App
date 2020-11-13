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
    
    
    <title>Movies</title>
</head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<!--welcome_page.js has the toogleSidebar function -->
<script src="../app_js/basic_utilities.js"></script>

<!--movies_page.js has the 
    -> search_movies function 
    -> fav_clicked function
-->
<script src="../app_js/movies_page.js"></script>


<body>
    <div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()" onmouseout="toggleSidebar()">
            <a href="http://localhost/welcome.php"><span><i class="fa fa-home"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Home</span></a><br>
            
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
                //get movies with curl GET request!! (REST APi)
                $movies = get_movies();
                
                //get favorites of the user with curl GET request(REST API)
                $favorites = get_favorites($_SESSION['user_id']);
              
               
                foreach($movies as $curr_movie) {
                    $is_favorite=false;
                   //see if current movie is in favorites!
                   foreach($favorites as $fav){
                       if($curr_movie["oid"] == $fav["movid"]){
                            $is_favorite = true;
                            break;
                       }
                     
                   }

                   $table_row= "<tr>"
                    ."<td name ='title'>".$curr_movie["title"]."</td>".
                    "<td name='cinema'>".$curr_movie["playing_in"]."</td>"
                    ."<td name ='category'>".$curr_movie["category"]."</td>"
                    ."<td name ='start_d'>".$curr_movie["start_date"]."</td>"
                    ."<td name ='end_d'>".$curr_movie["end_date"]."</td>";
                    //must add favorites and </td>

                    //if current movie is favorite add hear button
                    if($is_favorite == true){
                        $table_row = $table_row."<td class='icon'>
                        <button class = 'ic_fav' 
                        onclick='fav_clicked()'>
                        <i class='fa fa-heart'></i></button>"."</td>"
                        ."</tr>";
                    }
                    else{
                        $table_row = $table_row."<td class='icon'>
                        <button class='ic' 
                        onclick='fav_clicked()'>
                        <i class='fa fa-heart'></i></button>"."</td>" 
                        ."</tr>";

                    }
                    echo $table_row;

                }

                
           
            ?>  
            
            
            
        </table>

       
    </div>
</body>


    
</html>
