<?php

include './header.php';
echo 'yo';
$errorMsg = FALSE;

$admin = FALSE;
$profileData = "SELECT * FROM users WHERE user_id='$s_id'";

$resultD = $conn->query($profileData);

if ($resultD->num_rows > 0) {
    $rowsD = $resultD->fetch_assoc();
    if ($rowsD['role'] == 1)
        $admin = TRUE;
}
$ownr = mysqli_real_escape_string($conn, $_GET['q3']);
if(!$admin && $s_id != $ownr)header("Location:profile.php");

$_q1 = mysqli_real_escape_string($conn, $_GET['q1']);
$_q2 = mysqli_real_escape_string($conn, $_GET['q2']);

$Sql = "DELETE FROM " . $_q1 . " WHERE id=".$_q2;
$result = $conn->query($Sql);
header("Location:profile.php");