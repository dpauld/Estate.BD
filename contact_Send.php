<?php

include './header.php';
$errorMsg = FALSE;
if (isset($_POST['sendmessage'])) {

    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $emailFrom = mysqli_real_escape_string($conn, $_POST['email']);
    $mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
    $usermessage = mysqli_real_escape_string($conn, $_POST['usermessage']);
    
    $mailTo = "idpaulyd@gmail.com";
    $headers = "From: ".$emailFrom;
    $txt = "You have received an e-mail from ".$name.".\n\n".$usermessage;
    $subject = "A message from EstateBD";
    
    if (mail($mailTo, $subject, $txt , $headers)) {
        echo "Success";
    }else{
        echo "Failed";
    }
    
   header("Location:contact_form.php?mailsend");
}
