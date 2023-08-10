<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include '../classes/User.php'; ?>

<?php

        if (!isset($_GET['user_id']) || $_GET['user_id'] == NULL){
            echo "<script>window.location = 'userprofile.php'; </script>";
        }else{
            $id = $_GET['user_id'];
        }


        $cat = new Category();
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
        $user_type = $_POST['user_type'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];   
        $country = $_POST['country'];
        $district = $_POST['district'];
        $area = $_POST['area'];
        $postal_code = $_POST['postal_code'];
        $house_no = $_POST['house_no'];
        $dob = $_POST['dob'];
        $gender = $_POST['gender'];
        $contact = $_POST['contact'];
        $mail = $_POST['mail'];
        $pass = $_POST['pass'];
        $img = $_POST['img'];
        $role = $_POST['role'];
        $date_joined = $_POST['date_joined'];

        $insertCat = $cat->catInsert($catName); 
    }



?>

        <div class="grid_10">
            <div class="box round first grid">
                <h2>Update Category</h2>
               <div class="block copyblock"> 
               <?php
                    if(isset($insertCat)){
                        echo $insertCat;
                    }
               ?> 
                <?php 
                    $getCat = $cat->getCatById($id);
                    if ($getCat)
                    {
                        while ($result = $getCat->fetch_assos() ) {
                            # code...
                       
                ?>
                 <form action="catedit.php" method="post">
                    <table class="form">                    
                        <tr>
                            <td>
                                <input type="text" name="catName" value="<?php echo $result['catName']; ?>" class="medium" />
                            </td>
                        </tr>
                        <tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php }} ?>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>