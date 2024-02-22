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
        .dark-text {
            color: #333;
        }
        .link-text {
            color: #615d5d;
            font-weight: bold;
        }
        .btn:hover {
            background-color: #5f5f5f;
        }
        .signup {
            padding-top: 15px;
        }
        ol {
            text-align: left;
            color: #333;
        }
        input {
            width: 100%;
        }
        input.med-width {
            width: min-content;
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
          <h2 class="display-6 dark-text">Welcome to the vendor application page.</h2>

            <hr class="dark-text">
            <p>We would love to have you on board as one of our select vendors, with access to XX unique luxury brands. 
                Please fill out the form with your information, and we will get back to you with a decision on your 
                application as soon as we can.
            </p>

            <p>
                If you are a designer, please <a href="contact-us" class="dark-text">contact us</a>. 
            </p>
        
            <form method="post">
                <ol>
                    <li><fieldset class="mb-3">
                        <label>What is your brand name? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>What is your brand statement? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>What are your brand values? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>What are your sustainability goals in the next 5 years? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>Do you have any physical locations? If so, how many and where? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>Do you have an online presence? If so, where? Please include a link. </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>What is your projected growth in the next 5 years? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>What is your profit markup/margin? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>What is your annual revenue? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                    <li><fieldset class="mb-3">
                        <label>Tell us about your customer base. What is the demographic? How large is it? </label> 
                        <div><input type="text" required="required"/>
                        <errors cssClass="text-warning"/></div>
                    </fieldset></li>

                </ol>
                <input type="submit" class="btn med-width">
                
            </form>
        </div>

        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    </body>
</html>