
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
            background-color: #ffffff;
        }
        .row{
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
              <a class="nav-link" href="/shopPage">Buy</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/vendorOrders">Orders</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/vendorWelcome">Insights</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/cart">View Cart</a>
            </li>
          </ul>
        </div>
      </nav>
      
<div class="container mt-5">
    <h2>Previous Orders</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Date</th>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>2022-02-21</td>
                    <td>Shirt</td>
                    <td>2</td>
                    <td>$40.00</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>2022-02-22</td>
                    <td>Pants</td>
                    <td>1</td>
                    <td>$30.00</td>
                </tr>
                <!-- Add more rows for other orders -->
            </tbody>
        </table>
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


