<?php
include './header.php';

if (!$inSession) {
    header("Location:index.php");
}
?>

<?php
$profileData = "SELECT * FROM users WHERE user_id='$s_id'";

$resultD = $conn->query($profileData);

if ($resultD->num_rows > 0) {
    while ($rowsD = $resultD->fetch_assoc()) {
        $_f = $rowsD['fname'];
        $_l = $rowsD['lname'];
        $_mail = $rowsD['mail'];
        $_phn = $rowsD['contact'];
        $s_img = $rowsD['img'];
    }
}
?>

<!DOCTYPE HTML>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>EstateBD</title>
        <link rel="icon" type="image/png" href="./favicon.ico">
        <link type="text/css" href="./css/icon.css" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="./css/materialize.min.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./css/font-awesome.min.css"/>
        <link type="text/css" rel="stylesheet" href="./css/jquery.auto-complete.css" />
        <link type="text/css" rel="stylesheet" href="./css/style.css" />
        <link type="text/css" rel="stylesheet" href="./overrider.css" />

        <style>

            input[type]:not(.browser-default), input[type]:not(.browser-default):focus:not([readonly]){
                border-bottom: 1px solid #4a148c;
                box-shadow: 0 1px 0 0 #4a148c;
            }

            /* label color */
            .input-field label{
            }
            .input-field input[type]:focus + label.active {
                color: #4a148c;
            }
            /* label focus color */
            .input-field input[type=text]:focus + label {
                color: #4a148c;
            }
            /* label underline focus color */
            .input-field input[type=text]:focus {
                border-bottom: 1px solid #4a148c;
                box-shadow: 0 1px 0 0 #4a148c;
            }
            /*             valid color
                        .input-field input[type=text].valid {
                            border-bottom: 1px solid #4a148c;
                            box-shadow: 0 1px 0 0 #4a148c;
                        }
                         invalid color
                        .input-field input[type=text].invalid {
                            border-bottom: 1px solid #4a148c;
                            box-shadow: 0 1px 0 0 #4a148c;
                        }
                         icon prefix focus color
                        .input-field .prefix.active {
                            color: #4a148c;
                        }*/

            label#srch, label#srch.active{
                color: #4a148c !important;
            }

            a.underlin{
                text-decoration: underline;
            }

            .brd-r{
                border-right: 2px solid #4a148c;
            }

            @media only screen and (min-width: 470px){
                .modal {
                    width: 40%;
                }
            }


            #modalLog{
                max-height: 81%;
            }

            .checkbox-pruple[type="checkbox"].filled-in:checked + label:after{
                border: 2px solid #e040fb;
                background-color: #e040fb;
            }

            /* img overlay */
            #image_preview {
                position: relative;
                width: 50%;
                border: 1px solid #4a148c;
                border-radius: 5px;
                padding: 0;
            }

            .image {
                opacity: 1;
                display: block;
                width: 100%;
                height: auto;
                transition: .5s ease;
                backface-visibility: hidden;
            }

            .middle {
                transition: .5s ease;
                opacity: 0;
                width: 120%;
                position: absolute;
                top: 92%;
                left: 50%;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%)
            }

            #image_preview:hover .image {
                opacity: 0.3;
            }

            #image_preview:hover .middle {
                opacity: 1;
            }

            .text {
                border-radius: 7px;
                background-color: #e040fb;
                color: white;
                font-size: 16px;
                padding: 16px 32px;
            }

            .pS{
                color: #ffab40;
                margin-right: 24px;
                -webkit-transition: color .3s ease;
                transition: color .3s ease;
                text-transform: uppercase;
            }
            /*            #previewing{
                            cursor: pointer;
                        }*/

        </style>
    </head>
    <body>
      <div  class="page-wrap">
        <?php include './nav2.php'; ?>
        <div class="container">
          <div class="section">
            <div class="row">
              <div class="col s12" >
                <hr />
                <hr />
                <hr />
                <div id="propList" class="col s12" data-last="10">
                  <h4 class="purple-text text-accent-2">Property Fairs</h4>
                  <?php
                  $SSql = array(
                    "SELECT * FROM propfair"
                  );
                  foreach ($SSql as $Sql) {
                    $propFairList = $conn->query($Sql);
                    if ($propFairList->num_rows > 0) {
                      while ($rows = $propFairList->fetch_assoc()) {
                        if (!($rows['location'] == "")) {
                          $latlng = explode(',', $rows['location']);
                          echo "<div class='card horizontal hoverable lItem' data-lat='" . trim($latlng[0]) . "' data-lng='" . trim($latlng[1]) . "' data-price='" . $rows['feeType'] . "' data-addr='" . $rows['location'] . "'>";
                        } else {
                          echo "<div class='card horizontal hoverable'>";
                        }
                        echo "<div class='card-image col s3' style='padding-left: 0;'>";

                        //<span class="card-title">" . $rows['fairTitle'] . "</span>
                        echo "<img class='responsive-img' src='./img/uploads/post_640-1.jpg'>";
                        echo "</div>";
                        echo "<div class='card-stacked s9'>";
                        echo "<div class='card-content'>";
                        echo "<p class=''><strong>" . $rows['fairTitle'] . "</strong></p>";
                        echo "<p class=''>Area: " . $rows['area'] . ", District: " . $rows['district'] . "</p>";
                        echo "<p class=''>Location: " . $rows['location'] . "</p>";
                        echo "<p class=''>Date and Time: " . $rows['date'] . "</p>";
                        echo "<p class=''>Fee Type: " . $rows['feeType'] . "</p>";
                        echo "</div>";
                        echo "<div class='card-action'>";
                        echo "<a href='#?q1=" . $rows['fairId'] . "' class='' target='_blank'><i class='fa fa-lg fa-external-link' aria-hidden='true'></i>&nbsp;&nbsp;Details</a>";
                        echo "</div>";
                        echo "</div>";
                        echo "</div>";
                      }
                    }
                  }
                  ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php include './footer.php'; ?>
      <script type="text/javascript" src="./js/jquery.auto-complete.min.js"></script>
      <script type="text/javascript" src="./js/init.js"></script>
      <script type="text/javascript" src="./js/imgUpload.js"></script>
      <script type="text/javascript" src="./overrider.js"></script>

      <script>
        (function ($) {
          $(function () {
            Materialize.updateTextFields();
            $('.dropdown-button').dropdown({
              hover: true,
              belowOrigin: true
            });
          });
        })(jQuery);
      </script>

  </body>

</html>
