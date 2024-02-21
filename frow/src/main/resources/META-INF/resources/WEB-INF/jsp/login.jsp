<html>
    <head>
        <!-- CSS should be loaded first thing -->
        <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

        <title>Log In</title>
    </head>

    <body>
        <div class="container">
                
            <c:url value="/loginProcess" var="loginProcessing" />
            <form action="/loginProcess" method="post">
                <fieldset>
                    <legend>Please Login</legend>
                    <!-- use param.error assuming FormLoginConfigurer#failureUrl contains the query parameter error -->
                    
                    <p>
                        <label for="username">Username</label>
                        <input type="text" id="username" name="usernameParameter" />
                    </p>
                    <p>
                        <label for="password">Password</label>
                        <input type="password" id="password" name="passwordParameter" />
                    </p>
                    <!-- if using RememberMeConfigurer make sure remember-me matches RememberMeConfigurer#rememberMeParameter -->
                    <!-- if using RememberMeConfigurer make sure remember-me matches RememberMeConfigurer#rememberMeParameter -->
                    <p>
                        <label for="remember-me">Remember Me?</label>
                        <input type="checkbox" id="remember-me" name="remember-me" />
                    </p>
                    <div>
                        <button type="submit" class="submit">Log in</button>
                        <!-- <button type="button" class="btn btn-info" onclick="redirectToUrl('/signup')">Sign Up</button> -->
                    </div>
                </fieldset>
            </form>
        </div>

        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
        <script>
            function redirectToUrl(url) {
                window.location.href = url;
            }
        </script>

    </body>
</html>