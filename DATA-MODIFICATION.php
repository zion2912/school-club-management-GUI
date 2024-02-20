<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DATA-MODIFICATION</title>
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
        <h1>DATA MODIFICATION</h1>
        <!--welcome to the data modification page
            This page allows you to update the information a record providing you know its paymentID-->
        <p>Welcome to DATA MODIFICATION. Enter the paymentID of the record you would like to change</p>
        <form action="process_form_3.php" method="post">
            <input name="PaymentID" type="text" id="PaymentID" class="PAYMENT-ID-INPUT" placeholder = "PAYMENT ID">
            <p>Next, please enter the new values of attributes to be changed:</p>
            <input name = "StudentID" id="StudentID" class="STUDENT-ID-INPUT" placeholder = "Student ID">
            <input name = "ClubID" id="ClubID" class="CLUB-ID-INPUT" placeholder = "Club ID">
            <input name="Amount" id="Amount" class="AMOUNT" placeholder = "Amount">
            <input name = "paymentdate" id="paymentdate" class="PAYMENT-DATE-INPUT" placeholder = "Payment Date">

            <input type="submit" value="Submit">
        </form>
        <a href="home-screen.php"><button>HOME</button></a>
    </div>
</body>
</html>