<html>
    <head>
        <!-- CSS should be loaded first thing -->
        <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

        <title>Vendor Sign Up</title>
    </head>

    <body>
        <div class="container">
            <div>Welcome to the vendor application page. </div>
            <hr>
            <p>We would love to have you on board as one of our select vendors, with access to XX unique luxury brands. 
                Please fill out the form with your information, and we will get back to you with a decision on your 
                application as soon as we can.
            </p>

            <p>
                If you are a designer looking to get your designs featured, please reach out directly using our <a href="contact-us">Contact Us</a> page. 
            </p>
        
            <form method="post">
                <fieldset class="mb-3">
                    <label>What is your brand name? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>What is your brand statement? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>What are your brand values? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>What are your sustainability goals in the next 5 years? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>Do you have any physical locations? If so, how many and where? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>Do you have an online presence? If so, where? Please include a link. </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>What is your projected growth in the next 5 years? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>What is your profit markup/margin? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>What is your annual revenue? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <fieldset class="mb-3">
                    <label>Tell us about your customer base. What is the demographic? How large is it? </label> 
                    <input type="text" required="required"/>
                    <errors cssClass="text-warning"/>
                </fieldset>

                <input type="submit" class="btn btn-success">
                
            </form>
        </div>

        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    </body>
</html>