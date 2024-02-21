<html>
    <head>
        <title>Designer Welcome</title>
    </head>

    <body>
<<<<<<< Updated upstream
        <p>Hello Designer, welcome to FROW!</p>
=======
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">FROW</a>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Events</a>
                  </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Sell</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Item Inventory</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">View as Vendor</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Insights</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Log Out</a>
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

>>>>>>> Stashed changes
    </body>
</html>