<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Home Screen</title>
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
        }
    </style>
</head>
<body>
    <!--this is the home screen, it is like a hup for the other screens, all screens link back to this screen-->
    <div class="content-container">   
            <h1>Welcome to the Home Screen</h1>
            <p>You can manipulate the clubpayment table of the database:</p>
            <!--links to each of the three required screens-->
            <a href="DATA-SEARCH-AND-RESULTS.php"><button>Search And Results</button></a>
            <a href="DATA-ENTRY.php"><button>Data Entry</button></a>
            <a href="DATA-MODIFICATION.php"><button>Data Modification</button></a>
    </div>
</body>
</html>
