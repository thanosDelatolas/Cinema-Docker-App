<?php
    require 'global_vars.php';
    session_start();

    if (isset($_POST['email'])) {
        
        $username = trim($_POST["username"]);
        $password = trim($_POST["password1"]);
        $second_pass = trim($_POST["password2"]);
        $email = trim($_POST["email"]);
        
       
        $role = $_POST["user_choice"];

        //some validations

        //check if passwords are the same
        if ($password != $second_pass) {
            $_SESSION['err_reg']= 'These passwords does not match!';
            header("Location: register.php");
            exit;
        }

        //validate email
        elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){
            $_SESSION['err_reg']= 'Invalid email';
            header("Location: register.php");
            exit;
        }
        //time to talk with keyrock!!
        else{

            // make get request APPLICATION LOGIC
            $ch = curl_init();
            $url = $GLOBALS['App-Logic-Login']."?" .http_build_query([
                'register' => true, //a flag to execute the right code in App-Logic! 
                'username' => trim($username),
                'email' => trim($email),
                'password' => trim($password),
                'role' => $role
            ]);
            
            curl_setopt($ch,CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_HTTPGET, true);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
            
            $response = curl_exec($ch);
            curl_close($ch);
            
            $response = json_decode($response);
            
            //app logic response from keyrock!
            if( isset($response->inv_email) && $response->inv_email == true){
                $_SESSION['err_reg']= 'Email already used!';
                header("Location: register.php");
                exit;
            }
            else if(isset($response->went_wrong) && $response->went_wrong == true){
                $_SESSION['err_reg']= 'Something went wrong. You shoud try again later.';
                header("Location: register.php");
                exit;
            }
            
            else if(isset($response->created) && $response->created == true){
               
                session_start();
                session_destroy();
                echo "<script>
                    alert('$username created! You can login now :)');
                    window.location.href='http://localhost/index.php';
                </script>";
                
            }
            //no need for else! Always there is something because of app logic!
        }
        
    }

  
?>
<!DOCTYPE html>
<html>
    <head>
        <title>TD Cinemas</title>
        <link rel="stylesheet" type="text/css" href="app_style/register.css"> 
    </head>
    <body>
        <form method="POST" action="register.php">
        <table class="center_sign_up tbl_sign_up">
                <tr>
                    <td colspan="3" class="hi_row"><h1>Sign up to TD Cinemas</h1></td>
                </tr>
                <tr>
                    <td colspan="3"><br></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="label">Username:</td>
                    <td><input class="in" type="text" name="username" placeholder="Username" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="label">Email:</td>
                    <td><input class="in" type="text" name="email" placeholder="email" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="label">Password:</td>
                    <td><input class="in" type="password" name="password1" placeholder="Password" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="label">Confirm password:</td>
                    <td><input class="in" type="password" name="password2" placeholder="Confirm password" required></td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td class="label">User role:</td>
                    <td align="left" > 
                    <input class="some_margin" type="radio"  name="user_choice" value="USER" checked="checked">
                    USER 
                    <input class="some_margin" type="radio" name="user_choice" value="CINEMAOWNER">
                    CINEMAOWNER
                    </td>
                </tr>

                <tr>
                    <td colspan="3"><br></td>
                </tr>
                <tr>
                    <td colspan="3" align="center" > <input name= "submit" class="btn" type="submit" value="Register"></td>
                </tr>
                <tr>
                    <td colspan="3" align="center" ><a href="http://localhost/index.php" class="reg">Already have an account?</p> </td>
                </tr>

                <tr>
                    <td colspan="3" align="center" >
                        <p class = "err_msg">
                            <?php 
                                if (isset($_SESSION['err_reg'])){
                                    echo $_SESSION['err_reg'];
                                    unset($_SESSION['err_reg']);
                                }
                            ?>
                        </p>
                    </td>
                </tr
                
            </table>
        </form>
       

    </body>
</html>