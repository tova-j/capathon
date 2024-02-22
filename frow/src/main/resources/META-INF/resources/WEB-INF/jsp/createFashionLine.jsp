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
                font-size: 40;
                font-weight: bold;
                flex-shrink: 0;
                letter-spacing: .2px;
                line-height: 1.5rem;
                margin-right: 27px;
                text-transform: uppercase;
            }
            .text2{
                flex-shrink: 0;
                font-size: 28px;
                font-weight: 700;
                letter-spacing: .2px;
                line-height: 1.5rem;
                margin-right: 27px;
                text-transform: uppercase;
            }
            .text3{
                font-family: Canela,sans-serif;
                font-size: 18;
                text-align: left;
            }
            .container {
                display: flex;
                align-items: center;
            }

            .text-container {
                flex: 1;
                padding-right: 20px; /* Add some spacing between text and image */
            }

            .pradaimage1{
                width: 150px;
                height: 95px;
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
                <div class ="pradaimage1"><img decoding="async" src="https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-500x313.png" alt="Prada Logo" srcset="https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-500x313.png 500w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-100x63.png 100w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-140x88.png 140w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-768x480.png 768w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1536x960.png 1536w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-2048x1280.png 2048w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-320x200.png 320w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-640x400.png 640w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-360x225.png 360w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-720x450.png 720w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1080x675.png 1080w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-800x500.png 800w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1024x640.png 1024w, https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo-1280x800.png 1280w" sizes="(max-width: 500px) 100vw, 500px"></div>
              <h1 class="text1">PRADA</h1>
              <br>
              <h2 class="text2">SPRING SUMMER 2024</h2>
              <br>
              <h3 class="text3">The Prada SS24 Women's Collection by Miuccia Prada and Raf Simons presents absolute freedom of movement expressed through light dresses in flowing fabrics. Formal silhouettes borrowed from menswear are redesigned into architectural shapes that reconsider the archetypal lines of formal rigor.</h3>
            </div>
            <div class="image-container">
                <img src="https://assets.website-files.com/5fed0f51ffc65593dde6cef2/647f797251c898f937e8d660_00001-prada-fall-2023-menswear-c.jpeg" alt="THE LOWDOWN ON MEN’S FASHION MONTH SS24 | 10 Magazine Australia" class=" nofocus" tabindex="0" aria-label="THE LOWDOWN ON MEN’S FASHION MONTH SS24 | 10 Magazine Australia" role="button" data-bm="376">
            </div>
        </div>

        <div class="album py-5 bg-light">
            <div class="container">
    
              <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <c:forEach var="outfit" items="${outfit}">
                  <!-- Access individual properties of fashionLine object -->
                  <div class="col">
                    <div class="card shadow-sm">
                      <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
                        <rect width="100%" height="100%" fill="#55595c" />
                      </svg>
    
                      <div class="card-body">
                        <p class="card-text">${fashionLine.getFashionLineName()}</p>
                        <div class="d-flex justify-content-between align-items-center">
                          <div class="btn-group">
                            <button type="button" class="btn btn-sm btn-outline-secondary"
                              onclick="redirectToURL('/designer/fashionLines/${fashionLine.getId()}')">View</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
              </div>
            </div>
          </div>




    </body>
    <footer>
        <div class="container">
            <p>&copy; 2024 FROW. All Rights Reserved.</p>
        </div>
    </footer>
</html>
