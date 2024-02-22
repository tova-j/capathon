<!-- <html>

<form action="/addNewFashionLineHomepage" method="post">
    <fieldset>
        <legend></legend>
        <p>
            <input type="text" name="fashionLineName"/>
        </p>
        <p>
            <input type="text" name="fashionLineSeason" />
        </p>
        <p>
            <input type="text" name="fashionLineDescription" />
        </p>
        <div>
            <button type="submit" class="submit">Add</button>
        </div>
    </fieldset>
</form>

</html>
-->

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
            .navbar-nav {
                margin-left: auto;
            }
            .text1{
                font-family: Canela,sans-serif;
                font-size: 24;
                font-weight: bold;
            }
            .text2{
                font-family: Canela,sans-serif;
                font-size: 24;
                font-weight: bold;
            }
            .container {
                display: flex;
                align-items: center;
            }

            .text-container {
                flex: 1;
                padding-right: 20px; /* Add some spacing between text and image */
            }

            .image-container {
                flex: 1;
            }

            img {
                max-width: 100%;
                height: auto;
            }
        </style>
    </head>
    </head>

    <body>
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

        <div class="container">
            <div class="text-container">
              <h1 class="text1">PRADA</h1>
              <h2 class="text2">SPRING SUMMER 2024</h2>
              <h3 class="text3">The Prada SS24 Women's Collection by Miuccia Prada and Raf Simons presents absolute freedom of movement expressed through light dresses in flowing fabrics. Formal silhouettes borrowed from menswear are redesigned into architectural shapes that reconsider the archetypal lines of formal rigor.</h3>
            </div>
            <div class="image-container">
                <a href="https://www.prada.com/us/en/womens/spring-summer-2024/c/10560US" class="card__imgWrapper js-ratioImgCont"><picture data-image-width="2218" data-image-height="2560" data-image-tablet-height="2560" data-image-tablet-width="1844" data-image-mobile-height="1680" data-image-mobile-width="1200"><source media="(max-width:767px)" srcset="/content/dam/pradanux/home_page/2024/02/Mosaic_collections_ss/Mosaic_2/Card_1_MB.jpg/_jcr_content/renditions/cq5dam.web.751.751.webp, /content/dam/pradanux/home_page/2024/02/Mosaic_collections_ss/Mosaic_2/Card_1_MB.jpg/_jcr_content/renditions/cq5dam.web.1502.1502.webp 2x"> <!----> <source media="(max-width:1279px)" srcset="/content/dam/pradanux/home_page/2024/02/Mosaic_collections_ss/Mosaic_2/Card_1_TB.jpg/_jcr_content/renditions/cq5dam.web.1263.1263.webp, /content/dam/pradanux/home_page/2024/02/Mosaic_collections_ss/Mosaic_2/Card_1_TB.jpg/_jcr_content/renditions/cq5dam.web.2526.2526.webp 2x"> <!----> <source srcset="/content/dam/pradanux/home_page/2024/02/Mosaic_collections_ss/Mosaic_2/Card_1_DT.jpg/_jcr_content/renditions/cq5dam.web.1664.1664.webp, /content/dam/pradanux/home_page/2024/02/Mosaic_collections_ss/Mosaic_2/Card_1_DT.jpg/_jcr_content/renditions/cq5dam.web.3328.3328.webp 2x"> <!----> <img src="/content/dam/pradanux/home_page/2024/02/Mosaic_collections_ss/Mosaic_2/Card_1_DT.jpg" alt="SS24 Collection Woman" class="js-picture-image card__img      js-lazyLoad b-loaded"></picture></a>
            </div>
        </div>






    </body>
    <footer>
        <div class="container">
            <p>&copy; 2024 FROW. All Rights Reserved.</p>
        </div>
    </footer>
</html>
