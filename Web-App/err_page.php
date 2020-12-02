<?php
   
    session_start();//resume session
    
?>

<!DOCTYPE html>
<html>
<head>
    <title>Error page </title>
    <link rel="stylesheet" type="text/css" href="app_style/err_style.css"> 
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon.ico">
</head>
<body>
<div class="site">
	<div class="sketch">
		<div class="bee-sketch red"></div>
		<div class="bee-sketch blue"></div>
	</div>

<h1> <?php 
    if( isset($_SESSION['loggedin'])){
        echo 'Sorry '.$_SESSION['username'].',';
    }
    else{
        echo 'ERROR:';
    } 
    ?>
	<small>
        <?php echo $_SESSION['server_msg']; ?>
    </small>
    <small>
        You shoud go <a href = <?php  echo $_SESSION['next_page']; ?> >here</a>
    </small>
</h1>
</div>
</body>

</html>