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
            color:#333
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
        .navbar-nav {
            margin-left: auto;
        }
        .display-4 {
            color:#333;
            font-size: 40px;
            padding-bottom: 20px;
        }
        p.label {
            font-size: 20px;
        }
        p {
            color:#333;
        }
        .btn {
            background-color: #333;
            border: 1px;
            color: white;
            padding: 13px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
        }
        .btn:hover {
            background-color: #5f5f5f;
        }
        .signup {
            padding-top: 15px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">FROW</a>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
          </ul>
        </div>
      </nav> 
      
      <div class="jumbotron jumbotron-fluid" style="position:relative;">
        <div class="container">
          <h2 class="display-4">Contact us.</h2>

        <div class="container">
            <p>Need to get in touch with us directly?</p>

            <form method="post">
                <fieldset class="mb-3">
                    <p class="label">
                        <label>Subject: </label> 
                        <input type="text" required="required"/>
                    </p>
                </fieldset>

                <fieldset class="mb-3">
                    <p class="label">
                        <label>Message: </label> 
                        <input type="text" required="required"/>
                    </p>
                </fieldset>

                <input type="submit" class="btn btn-success">
                
            </form>
        </div>

        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    </body>
</html>