<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Product</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f1f1;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        .form-container h2 {
            text-align: center;
            color: #6c5ce7;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #ff6b6b;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        button:hover {
            background-color: #e84118;
            transform: scale(1.05);
        }

        button:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Edit Product</h2>
        <form action="update">
            Product ID: <input type="text" name="id" value="${prod.id}" placeholder="Enter Product ID" readonly><br>
            Product Name: <input type="text" name="name" value="${prod.name}" placeholder="Enter Product Name"><br>
            Product Price: <input type="number" name="price" value="${prod.price}" placeholder="Enter Product Price"><br>
            Product Description: <input type="text" name="description" value="${prod.description}" placeholder="Enter Product Description"><br>
            <button type="submit">UPDATE PRODUCT</button>
        </form>
    </div>
</body>
</html>
