<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f1f1;
            color: #333;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        .title {
            font-size: 32px;
            font-weight: bold;
            color: #6c5ce7;
            margin-bottom: 20px;
            padding: 15px 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            text-transform: uppercase;
        }

        .buttons {
            text-align: center;
            margin-top: 30px;
        }

        .buttons button {
            margin: 10px;
            padding: 14px 30px;
            font-size: 16px;
            background-color: #00b894;
            color: white;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .buttons button:hover {
            background-color: #00cec9;
            transform: scale(1.05);
        }

        .buttons button:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>
    <div class="title">
        Product Management System
    </div>

    <div class="buttons">
    <form >
        <button type="submit" formaction="add">ADD PRODUCT</button>
        <button type="submit" formaction="view">VIEW PRODUCTS</button>
    </form>
    </div>
</body>
</html>
