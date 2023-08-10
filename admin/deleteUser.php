<?php 

	include_once '../lib/Database.php';
	include_once '../helpers/Format.php';
?>
<?php include '../classes/User.php'; ?>
<?php
        $cat = new User();
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
        $user_id = $_POST['user_id'];
     
        $deleteUser = $cat->deleteById($user_id);
        echo "<script>window.location = 'userprofile.php'; </script>";
    }

?>

