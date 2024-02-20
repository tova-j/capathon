<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FROW - Upscale Fashion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #f9f9f9;
        }
        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        .jumbotron {
            background-size: cover;
            color: rgb(255, 255, 255);
            text-align: center;
            padding: 100px 0;
            margin-bottom: 0;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
        video {
            object-fit: cover;
        }
        .navbar-nav {
            margin-left: auto;
        }
    </style>
    </head>
    <body>
    <header>
        <h1>Welcome to FROW</h1>
        <p>Your destination for upscale fashion</p>
    </header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">FROW</a>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">Account Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Buy/Sell</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Logout</a>
            </li>
          </ul>
        </div>
      </nav>      
    <div class="jumbotron jumbotron-fluid" style="position:relative;">
        <video autoplay muted loop style="position:absolute; z-index:-1; top:0; left:0; width:100%; height:100%;">
          <source src="https://player.vimeo.com/progressive_redirect/playback/830518852/rendition/540p/file.mp4?loc=external&amp;signature=b0a9a0a2ed476765840a13941639b7f03f2c1c4d775c780bd7d29ece6772e242" type="video/mp4">
          Your browser does not support the video tag.
        </video>
        <div class="container">
          <h1 class="display-4">Your Fashion Company Slogan</h1>
          <p class="lead">Welcome to FROW</p>
        </div>
      </div>
    <footer>
        <div class="container">
            <p>&copy; 2024 FROW. All Rights Reserved.</p>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </script>

    <c:set var="role" value="${role}" />

    <!-- if role is designer -->
    <c:if test="${role eq 'ROLE_DESIGNER'}">
        <p>Welcome, Designer!</p>
    </c:if>
    
    <!-- else if role is vendor -->
    <c:if test="${role eq 'ROLE_VENDOR'}">
        <p>Welcome, Vendor!</p>
    </c:if> 
    <a href="/logout">Logout</a>

</body>
</html>