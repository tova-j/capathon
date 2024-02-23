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
              <a class="nav-link" href="/vendorShopPage">Buy</a>
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
        <div class="row">
            <div class="col-md-6">
                <img alt="a model on the runway at the louis vuitton menswear collection fashion show on june 20, 2023 in paris, france photo by giovanni giannoniwwd via getty images" title="Louis Vuitton Spring 2024 Menswear Collection Runway Show, Paris" loading="lazy" width="2695" height="4042" decoding="async" data-nimg="1" style="color:transparent;width:100%;height:auto;" sizes="100vw" srcset="https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:* 1920w" src="https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:*" class="css-0 evyp0mv0" height="">
            </div>
            <div class="col-md-6">
                <h2>Fashion Line</h2>
                <p>
                    Introducing our latest creation from the prestigious Louis Vuitton Fall/Winter Collection 2024: a masterpiece of elegance and innovation.
                </p>
                <p>
                    **The Statement Coat:**
                    Crafted from luxurious wool and cashmere blend, our statement coat exudes sophistication and style. With its tailored silhouette and oversized lapels, it commands attention while providing unparalleled warmth and comfort. The bold monogram pattern, synonymous with the Louis Vuitton brand, adds a touch of iconic flair to this timeless piece.
                </p>
                <p>  
                    **The Effortless Dress:**
                    Underneath the coat, lies a beautifully crafted dress that epitomizes effortless chic. Made from sumptuous silk, its flowing silhouette drapes gracefully over the body, creating a sense of movement with every step. The intricate embroidery detailing on the neckline adds a hint of opulence, elevating the dress to a work of art.
                </p>
                <p>
                    **The Finishing Touches:**
                    To complete the ensemble, we recommend styling the outfit with delicate gold jewelry and a classic silk scarf. These finishing touches add a sense of polish and sophistication, perfect for any occasion.
                </p>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Item</th>
                            <th>Cost</th>
                            <th>Size</th>
                            <th>Quantity</th>
                            <th>Add to Cart</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="piece" items="${pieces}">
                            <tr>
                                <td>${piece.getName()}</td>
                                <td>${piece.getPrice()}</td>
                                <td>${piece.getGender()}</td>
                                <td>0</td>
                                <td><button class="btn btn-primary">Add to Cart</button></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <button class="btn btn-primary">Add All to Cart</button>
            </div>
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
                        <a class="nav-link" href="/vendorShopPage">Buy</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/vendorOrders">Orders</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/vendorWelcome">Insights</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/addPieceToCart/cart">View Cart</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6">
                    <img alt="a model on the runway at the louis vuitton menswear collection fashion show on june 20, 2023 in paris, france photo by giovanni giannoniwwd via getty images"
                        title="Louis Vuitton Spring 2024 Menswear Collection Runway Show, Paris" loading="lazy"
                        width="2695" height="4042" decoding="async" data-nimg="1"
                        style="color:transparent;width:100%;height:auto;" sizes="100vw"
                        srcset="https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:* 1920w"
                        src="https://hips.hearstapps.com/hmg-prod/images/gettyimages-1258879579-6493279bbffcf.jpg?resize=980:*"
                        class="css-0 evyp0mv0" height="">
                </div>
                <div class="col-md-6">
                    <h2>Fashion Line</h2>
                    <p>
                        Introducing our latest creation from the prestigious Louis Vuitton Fall/Winter Collection 2024:
                        a
                        masterpiece of elegance and innovation.
                    </p>
                    <p>
                        **The Statement Coat:**
                        Crafted from luxurious wool and cashmere blend, our statement coat exudes sophistication and
                        style.
                        With its tailored silhouette and oversized lapels, it commands attention while providing
                        unparalleled warmth and comfort. The bold monogram pattern, synonymous with the Louis Vuitton
                        brand,
                        adds a touch of iconic flair to this timeless piece.
                    </p>
                    <p>
                        **The Effortless Dress:**
                        Underneath the coat, lies a beautifully crafted dress that epitomizes effortless chic. Made from
                        sumptuous silk, its flowing silhouette drapes gracefully over the body, creating a sense of
                        movement
                        with every step. The intricate embroidery detailing on the neckline adds a hint of opulence,
                        elevating the dress to a work of art.
                    </p>
                    <p>
                        **The Finishing Touches:**
                        To complete the ensemble, we recommend styling the outfit with delicate gold jewelry and a
                        classic
                        silk scarf. These finishing touches add a sense of polish and sophistication, perfect for any
                        occasion.
                    </p>



                    <table class="table">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Cost</th>
                                <th>Size</th>
                                <th>Quantity</th>
                                <th>Add to Cart</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="piece" items="${pieces}">
                                <tr>
                                    <td>${piece.getId()}</td>
                                    <td>${piece.getPrice()}</td>
                                    <td>${piece.getSize()}</td>
                                    <td>
                                        <select class="form-select" name="numItems" aria-label="Quantity">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                        </select>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-secondary"
                                            onclick="redirectToURL('/addPieceToCart/${piece.getId()}')">Add to
                                            Cart</button>

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>

                    <button class="btn btn-primary">Add All to Cart</button>
                </div>
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

    <script>
        function redirectToURL(baseUrl) {
            
            // Redirect to the final URL
            window.location.href = baseUrl;
        }

    </script>