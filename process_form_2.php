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
    <?php
        include_once 'db.inc.php';
        
        //read in information from user and use it to add a record to the table
        if ($_SERVER["REQUEST_METHOD"] == "POST"){
            $PaymentID = $_POST["PaymentID"];
            $ClubID = $_POST["ClubID"];
            $StudentID = $_POST["StudentID"];
            $paymentdate = $_POST["paymentdate"];
            $Amount = $_POST["Amount"];
        
            //add record and
            //display message to inform the user whether their record was added successfully
            $sql = "INSERT INTO clubpayment (PaymentID, StudentID, ClubID, paymentdate, Amount)
                    VALUES ('$PaymentID', '$StudentID', '$ClubID', '$paymentdate', '$Amount');";
            $result = mysqli_query($conn, $sql);
            if($result){
                echo "Record added Successfully";
            }
            else{
                echo "Record could not be added";
            }
        }

    ?>
    <a href="home-screen.php"><button>HOME</button></a>
    <a href="DATA-SEARCH-AND-RESULTS.php"><button>BACK TO SEARCH</button></a>
    </div>
</body>
</html>

        