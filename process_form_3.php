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
        
        //read in user data
        if ($_SERVER["REQUEST_METHOD"] == "POST"){
            $PaymentID = $_POST["PaymentID"];
            $ClubID = $_POST["ClubID"];
            $StudentID = $_POST["StudentID"];
            $paymentdate = $_POST["paymentdate"];
            $Amount = $_POST["Amount"];
        
            //update record and provide message indicating success or failure
            $sql = "UPDATE clubpayment SET StudentID = $StudentID, ClubID = $ClubID, paymentdate = $paymentdate, Amount = $Amount WHERE PaymentID = $PaymentID";
            $result = mysqli_query($conn, $sql);
            if($result){
                echo "Record updated Successfully";
            }
            else{
                echo "Record could not be updated";
            }
        }

    ?>
    <a href="home-screen.php"><button>HOME</button></a></br>
    <a href="DATA-MODIFICATION.php"><button>BACK TO DATA MODIFICATION</button></a>
    </div>
</body>
</html>