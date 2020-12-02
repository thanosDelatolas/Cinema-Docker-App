<?php
    require 'global_vars.php';
    session_start();

    if (isset($_POST['email'])) {
        // make get request APPLICATION LOGIC
        $ch = curl_init();
        $url = $GLOBALS['App-Logic-Login']."?" .http_build_query([
            'login' => 'login', //a flag to execute the right code in App-Logic! 
            'email' => $_POST['email'],
            'password' => $_POST['password']
        ]);
        
        curl_setopt($ch,CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HTTPGET, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        
        $response = curl_exec($ch);
        curl_close($ch);
        
        $response = json_decode($response);
        
        //invalid data
        if(is_null($response->access_token)){
            $_SESSION['err'] = 'Invalid email or password!';
        }
        elseif ($response->role != 'USER' and $response->role != 'CINEMAOWNER') {
            $_SESSION['server_msg'] = 'Please wait an admin to confirm your registration';
            $_SESSION['next_page'] =$GLOBALS['keyrock_official'];
            $_SESSION["loggedin"] = true;
          
            header("Location: err_page.php");
            exit;
        }
        else{
            $_SESSION["loggedin"] = true;
            $_SESSION["access_token"] = $response->access_token;
            $_SESSION["refresh_token"] = $response->refresh_token;
            $_SESSION["role"] = $response->role;
            $_SESSION["username"] = $response->username;
            $_SESSION["email"] = $response->email;
            $_SESSION["user_id"] = $response->user_id;
            
            header("Location: welcome.php");
            exit;
        }
      
      
        
        
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>TD Cinemas</title>
        <link rel="stylesheet" type="text/css" href="app_style/login.css"> 
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon.ico">

    </head>
    <body>
        <form method="POST" action="index.php">
            <table class="center tbl">
                <tr>
                    <td colspan="3" class="hi_row"><h1>Sign in to TD Cinemas with Keyrock</h1></td>
                </tr>
                <tr>
                    <td colspan="3"><br></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="label">Email:</td>
                    <td><input class="in" type="text" name="email" placeholder="Email" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="label">Password:</td>
                    <td><input class="in" type="password" name="password" placeholder="Password" required></td>
                </tr>
                <tr>
                    <td colspan="3"><br></td>
                </tr>
                <tr>
                    <td colspan="3" align="center" > <input class="btn" type="submit" value="Login"></td>
                </tr>
                <tr>
                    <td colspan="1">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" align="center" ><a href="http://localhost/register.php" class="reg">Don't have an account?</p> </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" >
                        <p class = "err_msg">
                            <?php 
                                if (isset($_SESSION['err'])){
                                    echo $_SESSION['err'];
                                    unset($_SESSION['err']);
                                }
                            ?>
                        </p>
                    </td>
                </tr>
                
            </table>
        </form>
       

    </body>
</html>