<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <!doctype html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>FROW - Upscale Fashion</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      body {
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        background-color: #f9f9f9;
        overflow: auto;
      }

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
      .btn.btn-primary.my-2 {
        background-color: #747f69;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .navbar-nav {
        margin-left: auto;
      }
    </style>


  </head>

  <body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div style="padding-left: 20px;" class="navbar-brand">FROW</div>
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
            <a class="nav-link" href="/customLogout">Logout</a>
          </li>
        </ul>
      </div>
    </nav>
    <main>

      <section class="py-5 text-center container">
        <div class="row py-lg-5">
          <div class="col-lg-6 col-md-8 mx-auto">
            <h1 class="fw-light">Welcome ${name}</h1>



            <a href="/designerSellHomepage/addNewFashionLineHomepage" class="btn btn-primary my-2">Add New Fashion
              Line</a>
            </p>
          </div>
        </div>
      </section>

      <div class="album py-5 bg-light">
        <div class="container">

          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <c:forEach var="fashionLine" items="${fashionLines}">
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

    </main>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>


  </body>

  <script>
    function redirectToURL(url) {
      window.location.href = url;
    }
  </script>

  </html>