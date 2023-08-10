<?php 

	include_once '../lib/Database.php';
	include_once '../helpers/Format.php';
?>



<?php
class User{
	private $db;
	private $fm;

	public function __construct(){
		$this->db = new Database();
		$this->fm = new Format();

	}

	public function catInsert($user_type,$fname,$lname,$country,$district,$area,$postal_code,$house_no,$dob,$gender,$contact,$mail,$pass,$img,$role,$date_joined)
	{
		$user_type = $this->fm->validation($user_type);
		$fname = $this->fm->validation($fname);
		$lname = $this->fm->validation($lname);
		$country = $this->fm->validation($country);
		$district = $this->fm->validation($district);
		$area = $this->fm->validation($area);
		$house_no = $this->fm->validation($house_no);
		$dob = $this->fm->validation($dob);
		$gender = $this->fm->validation($gender);
		$contact = $this->fm->validation($contact);
		$mail = $this->fm->validation($mail);
		$pass = $this->fm->validation($pass);
		$date_joined = $this->fm->validation($date_joined);


		$user_type = mysqli_real_escape_string($this->db->link, $user_type);
		$fname = mysqli_real_escape_string($this->db->link, $fname);
		$lname = mysqli_real_escape_string($this->db->link, $lname);
		$country = mysqli_real_escape_string($this->db->link, $country);
		$district = mysqli_real_escape_string($this->db->link, $district);
		$area = mysqli_real_escape_string($this->db->link, $area);
		$house_no = mysqli_real_escape_string($this->db->link, $house_no);
		$dob = mysqli_real_escape_string($this->db->link, $dob);
		$gender = mysqli_real_escape_string($this->db->link, $gender);
		$contact = mysqli_real_escape_string($this->db->link, $contact);
		$mail = mysqli_real_escape_string($this->db->link, $mail);
		$pass = mysqli_real_escape_string($this->db->link, $pass);
		$date_joined = mysqli_real_escape_string($this->db->link, $date_joined);



		if( empty($user_type)||empty($fname)||empty($lname)||empty($country)||empty($district)||empty($area)||empty($house_no)||empty($dob)||empty($gender)||empty($mail)||empty($pass))
		{
			$msg = "<span class='error'>Category filed must not be empty ! </span>";
			return $msg;

		}
		else
		{
			$query = "INSERT INTO users (user_type,fname,lname,country,district,area,postal_code,house_no,dob,gender,contact,mail,pass,img,role,date_joined) VALUES('$user_type', '$fname','$lname','$country','$district','$area','$postal_code','$house_no','$dob','$gender','$contact','$mail','$pass','$img','$role','$date_joined' ) ";
			$result = $this->db->insert($query);
			if($result != false){
				$msg = "<span class='success'>Category Inserted Successfully.</span>";
				return $msg;
			}
			else
			{
				$msg = "<span class='error'>Category Not Inserted.</span>";
				return $msg;
			}
		}
	}

	public function getAllCat()
	{
		$query = "SELECT * FROM users ORDER BY user_id DESC";
		$result = $this->db->select($query);
		return $result;

	}

	public function getCatById($id)
	{
		$query = "SELECT * FROM users WHERE user_id = '$id' ";
		$result = $this->db->select($query);
		return $result;
	}

	public function deleteById($id)
	{
		$query = "DELETE * FROM users WHERE user_id = '$id' ";
		$result = $this->db->select($query);
		$msg = "<span class='success'>User Deleted Successfully.</span>";
		return $msg;
		
	}
}

?>