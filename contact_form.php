<?php
include './header.php';

//if (!$inSession) {
//    header("Location:index.php");
//}
?>

<!DOCTYPE HTML>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>EstateBD</title>
        <link rel="icon" type="image/png" href="./favicon.ico">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="./css/nouislider.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./css/materialize.min.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./css/font-awesome.min.css"/>
        <link type="text/css" rel="stylesheet" href="./css/jquery.auto-complete.css" />
        <link type="text/css" rel="stylesheet" href="./css/dropzone.css"/>
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

            /* textarea css */
            .input-field textarea:focus + label.active {
                color: #4a148c;
            }
            /* textarea label focus color */
            .input-field textarea:focus + label {
                color: #4a148c;
            }
            /* textarea label underline focus color */
            textarea:not(.browser-default), textarea:not(.browser-default):focus:not([readonly]) {
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

            .brd-r-light{
                border-right: 2px solid #e040fb;
            }

            .brd-r-teal{
                border-right: 2px solid #26a69a;
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

            #map {
                width: 100%;
                height: 290px;
            }

            /* Only necessary for window height sized blocks */
            html, body, .block {
                height: 100%;
            }

            .topped {
                position: fixed;
                top: 0;
                left: 0;
                z-index: 999;
                width: 100%;
                height: 23px;
            }

            .topped-filters {
                top: 80px;
            }

            .topped-map {
                top: 167px;
                right: 0 !important;
            }

            .bgWhite{
                border-radius: 10px;
                background-color: #ffffff;
            }

            /*            .select-dropdown{
                            border-bottom: 1px solid #26a69a !important;
                            box-shadow: 0 1px 0 0 #26a69a !important;
                        }*/

            .noUi-target .range-label, .noUi-connect {
                background-color: #4a148c;
            }

            ul.dropdown-content.select-dropdown li span {
                color: #e040fb;
            }

            ul.dropdown-content.select-dropdown li.disabled span{
                color: rgba(0,0,0,0.3);
            }

            .card-eff{
                background: #fff;
                margin: 1rem;
                box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
            }

            #materialbox-overlay{
                opacity: 0.5 !important;
            }

            .carousel {
                height: 295px;
            }

            .carousel-item .active .material-placeholder .materialboxed{
                cursor: zoom-in;
            }

            #infoTabs{
                margin-top: -96px;
            }

            .dropzone {
                border: 2px dashed #e040fb;
                min-height: 217px;
            }

            .dropzone .dz-message {
                margin: 5em 0;
            }

        </style>
        <style>
            .tlTip {
                position: relative;
                display: inline-block;
            }

            .tlTip .tlTiptext {
                visibility: hidden;
                width: 120px;
                background-color: #555;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                padding: 5px 0;
                position: absolute;
                z-index: 1;
                top: -5px;
                left: 110%;
            }

            .tlTip .tlTiptext::after {
                content: "";
                position: absolute;
                top: 50%;
                right: 100%;
                margin-top: -5px;
                border-width: 5px;
                border-style: solid;
                border-color: transparent #555 transparent transparent;
            }
            .tlTip:hover .tlTiptext {
                visibility: visible;
            }
            .tlTip .tlTiptext {
                visibility: visible;
                top: -17px;
                left: 140%;
                width: 160px;
            }
           .error {color: #FF0000;}
        </style>
    </head>
    <body>

        <div class="page-wrap">
            <?php include './nav2.php'; ?>


            <div class="container-fluid">
                <div class="section">
                    
                    <div class="row">

                        <div class="col l7 m7 s12 offset-l2">
                            <h4 class="purple-text text-accent-2">Contact Us</h4>
                            <form id="" class="col s12" method="post" action="contact_Send.php">
                                <!--Full Name-->
                                <h5 class="purple-text text-accent-2">Your Name <span class="error"> *</span></h5>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="name" type="text" class="validate" name="name" required>
                                        <label for="name">Enter your name</label>
                                    </div>
                                </div>

                               <h5 class="purple-text text-accent-2">Email <span class="error"> *</span></h5>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="email" type="email" class="validate" name="email" required>
                                        <label for="email">Enter your email address</label>
                                    </div>
                                </div>

                                <h5 class="purple-text text-accent-2">Mobile Number</h5>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="mobile" type="tel" class="validate" name="mobile" required>
                                        <label for="mobile" >01XXXXXXXXX</label>
                                    </div>
                                </div>

                                <h5 class="purple-text text-accent-2">Message</h5>
                                <div class="row" style="margin-top: 0%;">
                                    <div class="input-field col s12">
                                        <textarea id="usermessage" class="materialize-textarea" name="usermessage" required></textarea>
                                        <label for="usermessage"><i class="fa fa-lg fa-info-circle" aria-hidden="true"></i>Write your message</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field col s12">
                                        <button class="btn waves-effect waves-light purple accent-2" type="submit" name="sendmessage">
                                            Send Message
                                        </button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <?php include './footer.php'; ?>

</html>

