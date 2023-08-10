<?php

include './dbConnect.php';
$selectSql = '';
$x = mysqli_real_escape_string($conn, $_GET['q1']);

$_ord = "id";
$orderBy = " ORDER BY " . $_ord;

$limit = " LIMIT 10";
if(isset($_GET['l'])){
    $_l = intval($_GET['l']);
    if($_l > 0){
        $limit = " LIMIT " . $_l . ", 10";
    }
}


function execT($Sql, $con) {
    
    $result = $con->query($Sql);
    
    if ($result->num_rows > 0) {
        while ($rows = $result->fetch_assoc()) {
            if (!($rows['location'] == "")) {
                $latlng = explode(',', $rows['location']);
                echo "<div class='card horizontal hoverable lItem' data-lat='" . trim($latlng[0]) . "' data-lng='" . trim($latlng[1]) . "' data-price='" . $rows['price'] . "' data-addr='" . $rows['fullAddress'] . "'>";
            } else {
                echo "<div class='card horizontal hoverable'>";
            }
            echo "<div class='card-image col s3' style='padding-left: 0;'>";
            echo "<img class='responsive-img' src='./img/uploads/post_640-1.jpg'>";
            echo "</div>";
            echo "<div class='card-stacked s9'>";
            echo "<div class='card-content'>";
            echo "<p class=''>Property Type: " . $rows['type'] . "</p>";
            echo "<p class=''>Location: " . $rows['area'] . ", " . $rows['district'] . "</p>";
            echo "<p class=''>Rent per month: " . $rows['price'] . " TK</p>";
            echo "<p class=''>Free From: " . $rows['available_from'] . "</p>";
            echo "</div>";
            echo "<div class='card-action'>";
            echo "<a href='propDetails.php?q1=" . $rows['type'] . "&q2=" . $rows['id'] . "' class='' target='_blank'><i class='fa fa-lg fa-external-link' aria-hidden='true'></i>&nbsp;&nbsp;Details</a>";
            echo "</div>";
            echo "</div>";
            echo "</div>";
        }
    }
}


//*** apartment ***//
    $selectSql = "SELECT * FROM apartment WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%'";
    $selectSql = $selectSql . $orderBy . $limit;
    execT($selectSql, $conn);

    //*** house ***//
    $selectSql = "SELECT * FROM house WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%'";
    $selectSql = $selectSql . $orderBy . $limit;
    execT($selectSql, $conn);;

    //*** office ***//
    $selectSql = "SELECT * FROM office WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%'";
    $selectSql = $selectSql . $orderBy . $limit;
    execT($selectSql, $conn);

    //*** shop ***//
    $selectSql = "SELECT * FROM shop WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%'";
    $selectSql = $selectSql . $orderBy . $limit;
    execT($selectSql, $conn);

//$selectSql = "(SELECT * FROM `apartment` WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%')"
//        ." UNION ".
//        "(SELECT * FROM `house` WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%')"
//        ." UNION ".
//        "(SELECT * FROM `office` WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%')"
//        ." UNION ".
//        "(SELECT * FROM `shop` WHERE district LIKE '%".$x."%' OR area LIKE '%".$x."%')";

echo $selectSql . "<br />";



mysqli_close($conn);
