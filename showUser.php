<?php
include"connection2.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show User Data</title>
</head>
<body>

<form action="showUser.php" method="POST">

<input type="text" name="Name" placeholder="Enter your name" required>
<input type="submit" name="show_user" value="show user">

</form>
    
</body>
</html>

<?php

if(isset($_POST['show_user'])){

    $name = $_POST['Name'];

    $sql = "SELECT * FROM `comscie_student` WHERE `Names` = '$name'";

    $result = mysqli_query($connection, $sql);

    if(mysqli_num_rows($result) > 0){

        $row = mysqli_fetch_assoc($result);

        echo"User Number: {$row['User']} <br>";
        echo"User Name: {$row['Names']} <br>";
        echo"User Id: {$row['Id']} <br>";
        echo"Date of entry: {$row['Date_of_entry']} <br>";
    }else{

        echo"User is not present in database please log in first";
    }

}

?>