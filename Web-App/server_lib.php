<?php
    require 'global_vars.php';
    /**
     * This library uses 2 new variables in SESSION
     * $_SESSION['server_msg'] => the message will be displayd in err_msg.php
     * $_SESSION['next_page'] => the redirect page from err_msg.php
     * 
    */
    
    session_start();
    /**
     * 
     * This function checks SESSION and if: 
     *  -> the user is not logged in => redirect him to log in page!
     *  -> the user isn't allowed to access a page redirects to error page
     *     
     * 
     * get as input the page that the user tries to access
    */
    function check_redirect($page){ 
        // for all pages! (and for welcome.php)
        if(!isset($_SESSION['loggedin'])){

            $_SESSION['server_msg'] = 'You are not logged in yet ';
            $_SESSION['next_page'] ='http://localhost/index.php';
           
            header("Location:  http://localhost/err_page.php");
            exit;
            
        }
        //if is loggedin but NOT CONFIRMED
        if($page=='welcome' and $_SESSION['role'] != 'CINEMAOWNER' and $_SESSION['role'] != 'USER'){
            $_SESSION['server_msg'] = 'Please wait an admin to confirm your registration';
            $_SESSION['next_page'] =$GLOBALS['keyrock_official'];
          
            header("Location:  http://localhost/err_page.php");
            exit;
        }
        if($page=='movies' and $_SESSION['role'] != 'USER'){
            $_SESSION['server_msg'] = 'Only USERS can access this page.';
            $_SESSION['next_page'] =$GLOBALS['welcome'];
          
            header("Location:  http://localhost/err_page.php");
            exit;
        }

        if($page=='movies' and $_SESSION['role'] != 'CINEMAOWNER'){
            $_SESSION['server_msg'] = 'Only CINEMAOWNER can access this page.';
            $_SESSION['next_page'] =$GLOBALS['welcome'];
          
            header("Location:  http://localhost/err_page.php");
            exit;
        }
        
        
       
    }
?>