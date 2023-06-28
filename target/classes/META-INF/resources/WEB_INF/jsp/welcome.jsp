<html>
<head>
  <title>Welcome Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }

    .container {
      width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    h2 {
      margin-top: 0;
    }

    p {
      margin-bottom: 20px;
    }

    .logout-button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 5px;
      text-decoration: none;
    }

    .logout-button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Welcome</h2>
    <p>Login Successful! Welcome to our website ${username} ! </p>
    <a href="logout.html" class="logout-button">Logout</a>
  </div>
</body>
</html>
