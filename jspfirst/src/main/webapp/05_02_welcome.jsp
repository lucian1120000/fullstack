<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Web Shopping Mall</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="./05_02_welcome.jsp">Home</a>
        </div>
    </nav>
    
    <% String greeting = "Welcome to Web Shopping Mall"; %>
    <% String tagline = "Welcome to Web Market!"; %>
    
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3"><%=greeting%></h1>
        </div>
    </div>
    
    <div class="container">
        <div class="text-center">
            <h3><%=tagline%></h3>
        </div>
        <hr>
    </div>
    
    <footer class="container">
        <p>&copy; 2024 Web Shopping Mall</p>
    </footer>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>