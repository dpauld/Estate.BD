<?php
header("Content-Type: application/json; charset=UTF-8");
include './dbConnect.php';

$_x = mysqli_real_escape_string($conn, $_GET['x']);

//$result = $conn->query("SELECT name FROM ".$obj->table." LIMIT ".$obj->limit);
$result = $conn->query("SELECT A.district
FROM	(SELECT DISTINCT district
		FROM apartment
		UNION
		SELECT DISTINCT area
		FROM apartment
		
		UNION

		SELECT DISTINCT district
		FROM office
		UNION
		SELECT DISTINCT area
		FROM office

		UNION

		SELECT DISTINCT district
		FROM shop
		UNION
		SELECT DISTINCT area
		FROM shop

		UNION

		SELECT DISTINCT district
		FROM house
		UNION
		SELECT DISTINCT area
		FROM house) as A
WHERE(A.district LIKE '%".$_x."%')
");
$outp = array();
$outp = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);
