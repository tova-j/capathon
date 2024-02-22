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
      min-height: 100vh;
      /* Set the minimum height of the body to 100% of the viewport height */
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
      flex-shrink: 0;
      /* Don't allow the footer to shrink */
      position: relative;
      bottom: 0;
      /* Position the footer at the bottom of the viewport */
      width: 100%;
    }

    .navbar-nav {
      margin-left: auto;
    }

    .text1 {
      font-family: Canela, sans-serif;
      font-size: 40;
      font-weight: bold;
      flex-shrink: 0;
      letter-spacing: .2px;
      line-height: 1.5rem;
      margin-right: 27px;
      text-transform: uppercase;
    }

    .text2 {
      flex-shrink: 0;
      font-size: 28px;
      font-weight: 700;
      letter-spacing: .2px;
      line-height: 1.5rem;
      margin-right: 27px;
      text-transform: uppercase;
    }

    .text3 {
      font-family: Canela, sans-serif;
      font-size: 18;
      text-align: left;
    }

    .container {
      display: flex;
      align-items: center;
    }

    .text-container {
      flex: 1;
      padding-right: 20px;
      /* Add some spacing between text and image */
    }

    .pradaimage1 {
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

  <form action="/addNewFashionLineHomepage" method="post">
    <div class="form-group">
      <label for="exampleFormControlInput1">Fashion Line Name</label>
      <input type="text" class="form-control" name="fashionLineName" id="exampleFormControlInput1">
    </div>
    <div class="form-group">
      <label for="exampleFormControlSelect1">Fashion Line Season</label>
      <select name="fashionLineSeason" class="form-control" id="exampleFormControlSelect1">
        <option>Spring</option>
        <option>Summer</option>
        <option>Fall</option>
        <option>Winter</option>
      </select>
    </div>
    <div class="form-group">
      <label for="exampleFormControlTextarea1">Fashion Line Description</label>
      <textarea name="fashionLineDescription" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>

    <div>
      <button type="submit" class="submit">Add</button>
  </div>
  </form>

  <div class="album py-5 bg-light">
    <div class="container">

      </div>
  </div>




</body>
<footer>
  <div class="container">
    <p>&copy; 2024 FROW. All Rights Reserved.</p>
  </div>
</footer>

</html>