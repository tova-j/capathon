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
            color: rgb(0, 0, 0);
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
            bottom: 0;
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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">FROW</a>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">Account Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/vendorWelcome">Buy/Sell</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Logout</a>
            </li>
          </ul>
        </div>
      </nav> 
      <video autoplay muted loop style="position:absolute; z-index:-1; top:0; left:0; width:100%; height:100%;">
        <source src="https://player.vimeo.com/progressive_redirect/playback/830518852/rendition/540p/file.mp4?loc=external&amp;signature=b0a9a0a2ed476765840a13941639b7f03f2c1c4d775c780bd7d29ece6772e242" type="video/mp4">
        Your browser does not support the video tag.
      </video>     
      <div class="jumbotron jumbotron-fluid" style="position:relative;">
        <div class="container">
          <h1 class="display-4">COUNTDOWN TO FROW GALA</h1>
        </div>
        <div id="countdown"></div>
        <script>
            // Set the date we're counting down to
            var countDownDate = new Date("May 30, 2024 00:00:00").getTime();

            // Update the countdown every 1 second
            var x = setInterval(function() {

                // Get the current date and time
                var now = new Date().getTime();

                // Calculate the remaining time
                var distance = countDownDate - now;

                // Calculate days, hours, minutes, and seconds
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                // Display the countdown timer
                document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
                + minutes + "m " + seconds + "s ";

                // If the countdown is over, display a message
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("countdown").innerHTML = "EXPIRED";
                }
            }, 1000);
        </script>
      </div>
      <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <c:set var="role" value="${role}" />

    <!-- if role is designer -->
    <c:if test="${role eq 'ROLE_DESIGNER'}">
        <p>Welcome, Designer!</p>
    </c:if>
    
    <!-- else if role is vendor -->
    <c:if test="${role eq 'ROLE_VENDOR'}">
        <p>Welcome, Vendor!</p>
    </c:if> 
    <a href="/customLogout">Logout</a>

</body>
<footer>
    <div class="container">
        <p>&copy; 2024 FROW. All Rights Reserved.</p>
    </div>
</footer>
</html>