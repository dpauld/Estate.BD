<?php

include './header.php';
if ($inSession) {
    session_destroy();

    if (isset($_COOKIE['id'])) {
        setcookie('id', "", time() - 3600);
        //echo 'yo';
        header("Location:index.php");
    }
}

header("Location:index.php");
