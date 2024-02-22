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
            min-height: 100vh;
            /* Set the minimum height of the body to 100% of the viewport height */
            margin: 0;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #ffffff;
        }

        .row {
            padding: 10px;
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
            flex-shrink: 0;
            /* Don't allow the footer to shrink */
            position: relative;
            bottom: 0;
            /* Position the footer at the bottom of the viewport */
            width: 100%;
        }

        video {
            object-fit: cover;
        }

        .navbar-nav {
            margin-left: auto;
        }

        .navbar-brand {
            padding: 10px;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/vendorWelcome">FROW</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/designerWelcome">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/designerSellHomepage">Sell</a>
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
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <h1>${fashionLine.getFashionLineName()}</h1>
        <div class="row mt-3">
            <div class="col-md-4 mb-4">
                <a href="/designer/fashionLines/${fashionLine.getId()}/outfits" class="text-decoration-none text-dark">
                    <div class="card">
                        <img id="fancybox-img"
                            src="https://stylesweekly.com/wp-content/uploads/2016/12/Trendy-Outfit-Ideas_25.jpg"
                            alt="Kobe bryant Logo" width="350" height="281">
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