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
    <link rel="stylesheet" type="text/css" href="../app_style/owner.css"> 
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
        <a href="#"><span><i class='fas fa-handshake'></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Bye/Sell</span></a><br>
        
        <a onclick='logout()' class="bottom_fa" ><span><i class="fas fa-sign-out-alt"></i><span class="icon-text">&nbsp;&nbsp;&nbsp;&nbsp;Log out</span></a><br>
    </div>

    <div id="main">
        <h1 class="mytitle">Time to modify your movies, <?php echo $_SESSION['username']?></h1>
        <input type="text" id="mov_search" class="search" onkeyup="search_in_cinemas()" placeholder="Search movies in your cinemas..">

        <table id="searchable_table">
            <tr class="header">
                <th>Cinema</th>
                <th>Title</th>
                <th>Category</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>&nbsp;</th> <!-- for icon -->
                <th>&nbsp;</th> <!-- for icon -->
            </tr>
            <!-- GET with curl request contents! -->
            <?php
                //time to make GET-request in the rest API to take cinemas and movies of this cinemaowner!!
                require '../make_request.php';

                //Returns all movies playing in all of his/her cinemas
                $owner_data = get_owner_data($_SESSION['user_id']);
               
                $row = 1;
                foreach($owner_data as $data){
                    $table_row= "<tr>"
                    //id to be recognanized by JQuery
                    ."<td name='cinema'>".$data['cin_name']."</td>"
                    ."<td name='title'>".$data['title']."</td>"
                    ."<td name ='category'>".$data['category']."</td>"
                    ."<td name ='start_d'>".$data['start_date']."</td>"
                    ."<td name ='end_d'>".$data['end_date']."</td>"
                    
                    //for jquery
                    ."<td name='cin_id' hidden='true'>".$data['cin_id']."</td>"
                    ."<td name='mov_id' hidden='true'>".$data["mov_id"]."</td>"

                    //id to be recognanized by JQuery
                   ."<td class='icon'> <button id='edit_'".intval($row)." class ='icon_edit' ><i class='fa fa-pencil-square-o'></i></button>"."</td>"
                   ."<td class='icon'> <button id='trash_'".intval($row)." class ='icon_edit'><i class='fa fa-trash' aria-hidden='true'></i></button>"."</td>"
                   ."</tr>";
                   $row=$row+1;
                   
                   echo $table_row;
                }
            ?>
        </table>
    </div>


    <div id="myModal" class="modal">
            <table class="modal_table">
              
                <tr>
                    <td colspan="3" class="details"><h1 class="h_title" id="movid_text"></h1></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="label">Cinema:</td>
                    <td>
                        <select class="select_cin" id="sel_cinema">
                        <?php
                            //time to make GET-request in the rest API to take only cinemas of tis cinemaowner!
                           
                            //get cinemas of the cinemaowner from data storage
                            $cinames = get_cinemas($_SESSION['user_id']);
                            foreach($cinames as $cin){
                                
                                $select_row= "<option value=".$cin['cin_id'].">".$cin['name']."</option>";
                                echo $select_row;
                            }
                            
                        ?>
                        </select>
                    </td>
                   
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td class="label">Title:</td>
                    <td><input id="title" class="in" type="text" name="title" placeholder="title"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="label">Category:</td>
                    <td><input id="category" class="in" type="text" name="category" placeholder="category"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="label">Start date:</td>
                    <td><input id="start_date" class="in" type="date" name="start_date" placeholder="yyyy/mm/dd"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="label">End date:</td>
                    <td><input id="end_date" class="in" type="date" name="end_date" placeholder="yyyy/mm/dd"></td>
                </tr>
                <tr>
                    <td colspan="1">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td></td>
                    
                    <td> 
                    <button type="button" id="changes" class="changes_btn" >Make changes</button>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <button type="button" id="cancel" class="cancel_btn" 
                    onclick="cancelFUNC()">Cancel</button></td>
                </tr>
                
                <tr>
                    <td colspan="3" align="center" >
                        <p id="err_msg" class = "err_msg">
                            
                        </p>
                    </td>
                </tr>
               
            </table>
        </div>
    </div>

</body>

</html>