<?php
include"connection2.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log in Form</title>
    <style>

    </style>
</head>
<body>
<form action="login2.php" method="POST">

<input type="text" name="Id" placeholder="Enter your id" minlength="6" maxlength="8" required>
<input type="text" name="Name" placeholder="Enter your name" required>
<input type="submit" name="login" value="login">

</form>
</body>
</html>

<?php

if(isset($_POST['login'])){

    $id = filter_input(INPUT_POST, 'Id', FILTER_SANITIZE_NUMBER_INT);
    $name = filter_input(INPUT_POST, 'Name', FILTER_SANITIZE_SPECIAL_CHARS);

    $sql = "INSERT INTO `comscie_student` (`User`, `Names`,`Id`, `Date_of_entry`) VALUES (NULL, '$name', '$id', current_timestamp())";

    mysqli_query($connection, $sql);

    echo"User {$name} is added";

    mysqli_close($connection);

    header("Location: showUser.php");

}

?>