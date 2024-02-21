package com.frow.vendor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VendorWebAppController {
    
    @RequestMapping(value="vendor", method=RequestMethod.GET)
    public String gotoVendorPage() {
        return "vendorWelcome";
    }

    @RequestMapping(value="signup", method=RequestMethod.GET)
    public String gotoDesignerWelcomePage() {
        return "vendorSignup";
    }

    @RequestMapping(value="signup", method=RequestMethod.POST)
    public String gotoSignupConfirmationPage() {
        return "signupConfirmation";
    }
}
