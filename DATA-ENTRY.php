<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DATA-ENTRY</title>
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
        <!--Welcome to the data entry page-->
        <h1>DATA ENTRY</h1>
        <p>Welcome to DATA ENTRY. You can add a record to the table here.</p>
        <!--inputs-->
        <form action="process_form_2.php" method="post">
            <input name = "StudentID" id="StudentID" class="STUDENT-ID-INPUT" placeholder = "Student ID">
            <input name = "ClubID" id="ClubID" class="CLUB-ID-INPUT" placeholder = "Club ID">
            <input name = "paymentdate" id="paymentdate" class="PAYMENT-DATE-INPUT" placeholder = "Payment Date">
            <input name="PaymentID" type="text" id="PaymentID" class="PAYMENT-ID-INPUT" placeholder = "PAYMENT ID">
            <input name="Amount" id="Amount" class="AMOUNT" placeholder = "Amount">

            <input type="submit" value="Submit">
        </form>
        <a href="home-screen.php"><button>HOME</button></a>
    </div>
</body>
</html>