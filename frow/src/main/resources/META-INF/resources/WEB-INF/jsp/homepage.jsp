<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FROW - Upscale Fashion</title>
    <link href="<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" />" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
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
            color: white;
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
    </style>
</head>
<body>
    <header>
            <div class="container">
                <h1>FROW</h1>
                <p>Your destination for upscale fashion</p>
                <a href="#" class="btn btn-primary btn-lg">Sign In</a>
                <a href="#" class="btn btn-primary btn-lg">Apply as Designer/Vendor</a>
            </div>
    </header>
    <div class="banner-container">
            <video playsinline="" autoplay="" loop="" class="video"><source src="https://player.vimeo.com/progressive_redirect/playback/830518852/rendition/540p/file.mp4?loc=external&amp;signature=b0a9a0a2ed476765840a13941639b7f03f2c1c4d775c780bd7d29ece6772e242" type="video/mp4"></video>
            <h2>About Us</h2>
            <p>FROW is a leading provider of high-end fashion for discerning customers. Our carefully curated collections showcase the latest trends and timeless classics, ensuring that you always look your best.</p>
    </div>
    <footer>
        <div class="container">
            <p>&copy; 2024 FROW. All Rights Reserved.</p>
        </div>
    </footer>
    <script src="<c:url value="/webjars/bootstrap/3.3.6/js/bootstrap.bundle.min.js" />"></script>

    <c:set var="role" value="${role}" />

    <!-- if role is designer -->
    <c:if test="${role eq 'ROLE_DESIGNER'}">
        <p>Welcome, Designer!</p>
    </c:if>
    
    <!-- else if role is vendor -->
    <c:if test="${role eq 'ROLE_VENDOR'}">
        <p>Welcome, Vendor!</p>
    </c:if>

</body>
</html>