<?php

include_once 'db.inc.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DATA-SEARCH-AND-RESULTS</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .content-container {
            text-align: center;
            background-color:brown;
            padding: 20px;
            border-radius: 10px;
            color: blanchedalmond;
        }

        h1 {
            margin-top: 20px;
            color:lemonchiffon;
        }

        button {
            margin-top: 10px;
            display: block;
            margin: auto;
        }

        input {
            margin-bottom: 10px;
        }

    </style>
</head>
<body>
    <div class="content-container">
        <form action="process_form.php" method="post">
            <!--data search and results page-->
            <h1>DATA SEARCH AND RESULTS</h1>
            <!--this page allows you to get the information about a payment record provided you have the paymentID-->
            <p>Welcome to DATA SEARCH AND RESULTS. Enter the Payment ID of the payment to find more information about it:</p>

            <input id="paymentID" name="paymentID" type="text" class="PAYMENT-ID-INPUT" placeholder = "PAYMENT ID">

            <input type="submit" value="Submit">
        </form>
        <a href="home-screen.php"><button>HOME</button></a>
    </div>
</body>
</html>