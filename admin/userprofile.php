<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include '../classes/User.php'; ?>
<?php
        $user = new User();
?>
<h2 style="color: #FFFF">User List Below</h2>
     <div class="container" style="width: 92%; margin-left: 150px;  ">
        <div class="table-wrapper" style="width: 92%">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Users</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Employee</span></a>
                        <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>                        
                    </div>
                </div>
            </div>

            <table class="table table-striped table-hover" style="">
                <thead>
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Country</th>
                        <th>District</th>
                        <th>Area</th>
                        <th>Post Code</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                        <?php 
                            $getUser = $user->getAllCat();
                            if($getUser)
                            {
                                $i=0;
                                while ($result= $getUser->fetch_assoc()) {
                                    # code...
                                    $i++;
                                
                        ?>
                    <tr>
                        <td>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                <label for="checkbox1"></label>
                            </span>
                        </td>
                        <td><?php echo $result['user_id'];?></td>
                        <td><?php echo $result['fname'];?></td>
                        <td><?php echo $result['lname'];?></td>
                        <td><?php echo $result['country'];?></td>
                        <td><?php echo $result['district'];?></td>
                        <td><?php echo $result['area'];?></td>
                        <td><?php echo $result['postal_code'];?></td>
                        <td>
                            <a href="editUser.php?user_id=<?php echo $result['user_id'];?>" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="deleteUser.php?user_id=<?php echo $result['user_id'];?>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    <?php
                            
                                }
                            
                            }
                        ?>
                    
                </tbody>
            </table>
<p>--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
            <table class="table table-striped table-hover" style="">
                <thead>
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>
                        <th>ID</th>
                        <th>House No</th>
                        <th>Gender</th>
                        <th>DateOfBirth</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                        <?php 
                            $getUser = $user->getAllCat();
                            if($getUser)
                            {
                                $i=0;
                                while ($result= $getUser->fetch_assoc()) {
                                    # code...
                                    $i++;
                                
                        ?>
                    <tr>
                        <td>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                <label for="checkbox1"></label>
                            </span>
                        </td>
                        <td><?php echo $result['user_id'];?></td>
                        <td><?php echo $result['house_no'];?></td>
                        <td><?php echo $result['gender'];?></td>
                        <td><?php echo $result['dob'];?></td>
                        <td><?php echo $result['contact'];?></td>
                        <td><?php echo $result['mail'];?></td>
                        <td><?php echo $result['pass'];?></td>
                        <td>
                            <a href="editUser.php?user_id=<?php echo $result['user_id'];?>" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="deleteUser.php?user_id=<?php echo $result['user_id'];?>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    <?php
                            
                                }
                            
                            }
                        ?>
                    
                </tbody>
            </table>    



            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>

<?php include 'inc/footer.php';?>