<?php
    /**
     * Page only for users! 
    */
    include '../server_lib.php';
    
    session_start();
    check_redirect('owner');
?>


<!DOCTYPE html>
<html>
<head> 
    <link rel="stylesheet" type="text/css" href="../app_style/owner_add_rem.css"> 
    <link rel="stylesheet" type="text/css" href="../app_style/sidebar.css"> 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!-- Add jquery -->
    
    <title>Owner Page</title>
</head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<!--welcome_page.js has the toogleSidebar function -->
<script src="../app_js/basic_utilities.js"></script>

<!--movies_page.js has the 
    -> search_cinemas function 
-->
<script src="../app_js/owner_page.js"></script>

<!--movies_jquery.js has the 
    -> REQUESTS TO APP-LOGIC and
    -> the modal functionality
-->
<script src="../app_js/owner_jquery.js"></script>

<body>
    <div id="mySidebar" class="sidebar" onmouseover="toggleSidebar()" onmouseout="toggleSidebar()">
        <a href="http://localhost/welcome.php"><span><i class="fa fa-home"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Home</span></a><br>
        <a href="http://localhost/owner_pages/owner.php"><span><i class="fa fa-arrow-circle-left"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Back</span></a><br>
        
        <a onclick='logout()' class="bottom_fa" ><span><i class="fas fa-sign-out-alt"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Log out</span></a><br>
    </div>
    <div id="main">
        <h1 class="mytitle">Acquire new cinemas and movies, <?php echo $_SESSION['username']?></h1>
        <div class="upper_area">
            <input type="text" id="mov_search" class="search" onkeyup="search_cinemas_only()" placeholder="Search your cinemas..">
            <button type="button" id="disp_modal" class="modify">Buy Cinema</button>
            <button type="button" id="disp_modal_mov" class="modify">Buy Movie</button>
        </div>

        <table id="searchable_table">
            <tr class="header">
                <th>Cinema </th>
                <th>&nbsp;</th>
            </tr>

            <!-- GET with curl request contents! -->
            <?php
                //time to make GET-request in the rest API to take cinemas of this CINEMAOWNER
                require '../make_request.php';

                $cinemas = get_cinemas($_SESSION['user_id']);

                $row = 1;
                if (is_array($cinemas) || is_object($cinemas)){
                    foreach($cinemas as $cin){
                        $table_row= "<tr>"
                        ."<td name='cinema'>".$cin['name']."</td>"
                        //for jquery
                        ."<td name='cin_id' hidden='true'>".$cin['cin_id']."</td>"

                        //id to be recognanized by JQuery
                        ."<td class='icon'> <button id='del_cin_'".intval($row_num)." class ='icon_edit'><i class='fa fa-trash' aria-hidden='true'></i></button>"."</td>"
                        ."</tr>";
                        $row_num=$row_num+1;
                        echo $table_row;
                    }
                }
            ?>


        </table>
        <!-- Message to display the last movie that has been bought-->
        <h1 id="mov_bought" class="bought_movie"> 
            <?php
                
                $last_movie_bought = get_last_movie($_SESSION['user_id']);
                echo "Last movie bought: ".$last_movie_bought['title']."<br>"."in cinema: "
                .$last_movie_bought['cinema'].".<p>You can see all your movies in the 
                previous page!</p>";
            ?>
        </h1>

    </div>
</body>

</html>
