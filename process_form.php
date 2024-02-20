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

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Retrieve the data from the form 
            //and use sql query to return data from the database table
            $paymentID = $_POST["paymentID"];
        
            $sql = "SELECT * FROM clubpayment WHERE PaymentID = $paymentID";
        
            $result = mysqli_query($conn, $sql);
            $resultCheck = mysqli_num_rows($result);
        
            if ($resultCheck > 0){
                while ($row = mysqli_fetch_assoc($result)){
                    echo "Details for Payment " , $paymentID , "<br>" , "<br>";
                    echo "Student ID : ";
                    echo $row['StudentID'] . "<br>";
                    echo "Club ID : ";
                    echo $row['ClubID'] . "<br>";
                    echo "Payment Date : ";
                    echo $row['paymentdate'] . "<br>";
                    echo "Amount: ";
                    echo $row['Amount'] . "<br>" . "<br>" . "<br>";
                }
            }
            
        }
    ?>

    <a href="home-screen.php"><button>HOME</button></a>
    <a href="DATA-SEARCH-AND-RESULTS.php"><button>BACK TO SEARCH</button></a>
    </div>
</body>
</html>