
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FROW - Upscale Fashion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Set the minimum height of the body to 100% of the viewport height */
            margin: 0;
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
            flex-shrink: 0; /* Don't allow the footer to shrink */
            position: relative;
            bottom: 0; /* Position the footer at the bottom of the viewport */
            width: 100%;
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
              <a class="nav-link" href="/shopPage">Buy</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/contactUs">Orders</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/contactUs">Insights</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/customLogin">View Cart</a>
            </li>
          </ul>
        </div>
      </nav> 
      <div class="container">
        <h1>Designers</h1>
        <div class="row mt-3">
            <div class="col-md-4 mb-4">
                <a href="designer1.html" class="text-decoration-none text-dark">
                    <div class="card">
                        <img decoding="async" class="aligncenter size-medium wp-image-196195" src="https://1000logos.net/wp-content/uploads/2020/01/Dior-Logo-500x281.png" alt="Dior Logo" width="350" height="281" srcset="https://1000logos.net/wp-content/uploads/2020/01/Dior-Logo-500x281.png 500w, https://1000logos.net/wp-content/uploads/2020/01/Dior-Logo-140x79.png 140w, https://1000logos.net/wp-content/uploads/2020/01/Dior-Logo-768x432.png 768w, https://1000logos.net/wp-content/uploads/2020/01/Dior-Logo-1536x864.png 1536w, https://1000logos.net/wp-content/uploads/2020/01/Dior-Logo-2048x1152.png 2048w" sizes="(max-width: 500px) 100vw, 500px">
                        <div class="card-body">
                            <h5 class="card-title">Christian Dior</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 mb-4">
                <a href="/designerShopPage" class="text-decoration-none text-dark">
                    <div class="card">
                        <img style="display: block;-webkit-user-select: none;margin: auto;cursor: zoom-in;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://1000logos.net/wp-content/uploads/2021/11/Calvin-Klein-logo.png" width="350" height="281">
                        <div class="card-body">
                            <h5 class="card-title">Calvin Klein</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 mb-4">
                <a href="designer3.html" class="text-decoration-none text-dark">
                    <div class="card">
                        <img id="fancybox-img" src="https://1000logos.net/wp-content/uploads/2017/10/Kobe-bryant-Logo.png" alt="Kobe bryant Logo" width="350" height="281">
                        <div class="card-body">
                            <h5 class="card-title">Kobe Bryant</h5>
                        </div>
                    </div>
                </a>
            </div>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
<footer>
    <div class="container">
        <p>&copy; 2024 FROW. All Rights Reserved.</p>
    </div>
</footer>
</html>