<html>
<head>
  <title>Welcome Page</title>
  <style>
    .navbar {
      background-color: #f8f9fa;
      padding: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .navbar-brand {
      margin: 5px;
      text-decoration: none;
      font-weight: bold;
      color: #333;
    }

    .navbar-nav {
      display: flex;
      align-items: center;
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .nav-item {
      margin-right: 10px;
    }

    .nav-link {
      text-decoration: none;
      color: #333;
    }
  </style>

</head>
<body>
  <nav class="navbar">
    <div>

      <ul class="navbar-nav">
        <li><a class="navbar-brand" href="https://nipunh.github.io">Nipun Hedaoo</a></li>
        <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="/list-todos">Todos</a></li>
      </ul>
    </div>
    <ul class="navbar-nav">
      <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
    </ul>
  </nav>
</body>
</html>
