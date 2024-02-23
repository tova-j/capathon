<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
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
        .grid-container {
            display: grid;
            grid-template-columns: 100%;
            grid-gap: 20px;
        }

        @media (min-width: 576px) {
          .grid-container {
            grid-template-columns: repeat(2, 1fr);
          }
        }

        @media (min-width: 768px) {
          .grid-container {
            grid-template-columns: repeat(2, 1fr);
          }
        }

        @media (min-width: 992px) {
          .grid-container {
            grid-template-columns: repeat(4, 1fr);
          }
        }
        .grid-item {
            background-color: #f0f0f0;
            padding: 20px;
            text-align: center;
        }
        img {
            max-width: 50%;
            height: auto;
        }
        .custom-button {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .text1{
            font-family: Canela,sans-serif;
            text-align: center;
            font-size: 22;
            font-weight: bold;
        }
        .text2{
            font-family: Canela,sans-serif;
            font-size: 22;
            font-weight: bold;
        }
        .text3{
            font-size: 20;
        }
        .centered {
          text-align: center;
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
            color: white;
        }
        .btn-signup {
            padding-top: 6px;
            padding-bottom: 6px;
        }
        .extra-bottom-padding {
          padding-bottom: 20px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">FROW</a>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="/authenticationCouncil">Authentication Council</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/customLogin">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/vendor-signup">Apply as Vendor</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/designer-signup">Apply as Designer</a>
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
          <h1 class="display-4">Thank you for your Order!</h1>
          <h2 class="display-5">Order Confirmation Number</h2>
          <h3 class="display-5">189028462917319</h3>
        </div>
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
    </script>
    <div>
      <h2 class="text1">Global Industry Brands That Trust FROW</h2>
      <br>
      <div class="grid-container">
        <div class="grid-item"><img decoding="async" src="https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-500x313.png" alt="Prada Logo" srcset="https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-500x313.png 500w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-100x63.png 100w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-140x88.png 140w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-768x480.png 768w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1536x960.png 1536w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-2048x1280.png 2048w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-320x200.png 320w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-640x400.png 640w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-360x225.png 360w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-720x450.png 720w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1080x675.png 1080w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-800x500.png 800w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1024x640.png 1024w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1280x800.png 1280w" sizes="(max-width: 500px) 100vw, 500px"></div>
        <div class="grid-item"><img decoding="async" class="aligncenter size-medium wp-image-105760" src="https://1000logos.net/wp-content/uploads/2021/04/Louis-Vuitton-logo-500x281.png" alt="Louis Vuitton logo" width="500" height="345" srcset="https://1000logos.net/wp-content/uploads/2021/04/Louis-Vuitton-logo-500x281.png 500w, https://1000logos.net/wp-content/uploads/2021/04/Louis-Vuitton-logo-140x79.png 140w, https://1000logos.net/wp-content/uploads/2021/04/Louis-Vuitton-logo-768x432.png 768w, https://1000logos.net/wp-content/uploads/2021/04/Louis-Vuitton-logo-1536x864.png 1536w, https://1000logos.net/wp-content/uploads/2021/04/Louis-Vuitton-logo-2048x1152.png 2048w" sizes="(max-width: 500px) 100vw, 500px"></div>
        <div class="grid-item"><img decoding="async" class="aligncenter size-medium wp-image-89364" src="https://1000logos.net/wp-content/uploads/2021/02/Athleta-logo-500x345.png" alt="Athleta logo" width="500" height="345" srcset="https://1000logos.net/wp-content/uploads/2021/02/Athleta-logo-500x345.png 500w, https://1000logos.net/wp-content/uploads/2021/02/Athleta-logo-140x97.png 140w, https://1000logos.net/wp-content/uploads/2021/02/Athleta-logo-768x530.png 768w, https://1000logos.net/wp-content/uploads/2021/02/Athleta-logo-1536x1059.png 1536w, https://1000logos.net/wp-content/uploads/2021/02/Athleta-logo-2048x1412.png 2048w" sizes="(max-width: 500px) 100vw, 500px"></div>
        <div class="grid-item"><img decoding="async" class="aligncenter size-medium wp-image-166861" src="https://1000logos.net/wp-content/uploads/2022/08/Tommy-Hilfiger-logo-500x281.png" alt="Tommy Hilfiger logo" width="500" height="345" srcset="https://1000logos.net/wp-content/uploads/2022/08/Tommy-Hilfiger-logo-500x281.png 500w, https://1000logos.net/wp-content/uploads/2022/08/Tommy-Hilfiger-logo-140x79.png 140w, https://1000logos.net/wp-content/uploads/2022/08/Tommy-Hilfiger-logo-768x432.png 768w, https://1000logos.net/wp-content/uploads/2022/08/Tommy-Hilfiger-logo-1536x864.png 1536w, https://1000logos.net/wp-content/uploads/2022/08/Tommy-Hilfiger-logo-2048x1152.png 2048w" sizes="(max-width: 500px) 100vw, 500px"></div>
    
      </div>
      <br>
      <br>
      <h1 class="display-4 centered">Venturous Vendors.</h1>
      <br>
      <h3 class="text2 centered"> Power Of Discovery</h3>
      <p class="centered"> identify brands that your customers will love with FROW</p>
      <h3 class="text2 centered"> Fashion Forward</h3>
      <p class="centered"> exclusive access to innovative & trendsetting fashion shows</p>
      <h3 class="text2 centered"> Conscious Couture</h3>
      <p class="centered"> curated content aligning with your brand's values</p>
    </div>

    <div class="container centered extra-bottom-padding">
      <a class="btn btn-signup" href="/vendor-signup">Apply to be a Vendor</button>
    </div>
    


</body>
<footer>
    <div class="container">
        <p>&copy; 2024 FROW. All Rights Reserved.</p>
    </div>
</footer>

<script>
  function redirectToUrl(url) {
      window.location.href = url;
  }
</script>
</html>