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
                    <c:if test="${param.error != null}">
                        <div>
                            Failed to login.

                            <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
                                Reason:
                                <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
                            </c:if>
                        </div>
                    </c:if>
                    <!-- the configured LogoutConfigurer#logoutSuccessUrl is /login?logout and contains the query param logout -->
                    <c:if test="${param.logout != null}">
                        <div>
                            You have been logged out.
                        </div>
                    </c:if>
                    <p>
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" />
                    </p>
                    <p>
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" />
                    </p>
                    <!-- if using RememberMeConfigurer make sure remember-me matches RememberMeConfigurer#rememberMeParameter -->
                    <!-- if using RememberMeConfigurer make sure remember-me matches RememberMeConfigurer#rememberMeParameter -->
                    <p>
                        <label for="remember-me">Remember Me?</label>
                        <input type="checkbox" id="remember-me" name="remember-me" />
                    </p>
                    <div>
                        <button type="button" class="btn btn-success" onclick="redirectToUrl('/home')">Log in</button>
                        <button type="button" class="btn btn-info" onclick="redirectToUrl('/signup')">Sign Up</button>
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