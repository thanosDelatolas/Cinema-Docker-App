<?php
  
  $servername = "mysql_db:3306";
  $my_sql_user = "root";
  $my_sql_pass = "root_pass";
  $db_name = "cinema_db";
  

  // Create connection
  $conn = new mysqli($servername, $my_sql_user, $my_sql_pass,$db_name);

  // Check connection
  if ($conn->connect_error) {
    echo $conn->connect_error; 
    die("Connection failed: " . $conn->connect_error);
  }

   $sql = "SELECT username FROM CIN_USERS";
   $result = $conn->query($sql);

   if ($result->num_rows > 0) {
   // output data of each row
   while($row = $result->fetch_assoc()) {
      echo "username: " . $row["username"]. "<br>";
   }
   } else {
      echo "0 results";
   }
   $conn->close();




   
?>