<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include '../classes/User.php'; ?>

<?php
        $cat = new User();
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
     
        $insertCatUser = $cat->catInsert($user_type,$fname,$lname,$country,$district,$area,$postal_code,$house_no,$dob,$gender,$contact,$mail,$pass,$img,$role,$date_joined);
    }



?>

        <div class="grid_10">
            <div class="box round first grid">
                <h2>Add New User</h2>
               <div class="block copyblock"> 
               <?php
                    if(isset($insertCatUser)){
                        echo $insertCatUser;
                    }
               ?> 
                 <form action="addUser.php" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" name="user_type" placeholder="Enter User Type..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="fname" placeholder="Enter First Name..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="lname" placeholder="Enter Last Name..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="country" placeholder="Enter Country Name..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="district" placeholder="Enter District Name..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="area" placeholder="Enter Area Name..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="postal_code" placeholder="Enter Postal Code..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="house_no" placeholder="Enter House No..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="dob" placeholder="Enter Date Of Birth..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="gender" placeholder="Enter Gender..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="contact" placeholder="Enter Contact..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="mail" placeholder="Enter Mail..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="pass" placeholder="Enter New Password..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="img" placeholder="Enter New img..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="role" placeholder="Enter Role..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="date_joined" placeholder="Enter Joined Date..." class="medium" />
                            </td>
                        </tr>
                        
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>