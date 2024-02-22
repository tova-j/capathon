package com.frow.vendor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VendorWebAppController {
    
    /*@RequestMapping(value="vendor", method=RequestMethod.GET)
    public String gotoVendorPage() {
        return "vendorWelcome";
    }*/

    @RequestMapping(value="/vendorWelcome")
    public String gotoVendorPage() {
        return "vendorWelcome";
    }

    @RequestMapping(value="/shopPage")
    public String gotoShopPage() {
        return "shopPage";
    }

    @RequestMapping(value="/designerShopPage")
    public String gotoDesignerShopPage() {
        return "designerShopPage";
    }

    @RequestMapping(value="/outfitShopPage")
    public String gotoOutfitShopPage() {
        return "outfitShopPage";
    }

    @RequestMapping(value="/cart")
    public String gotoCart() {
        return "cart";
    }

    @RequestMapping(value="/vendorOrders")
    public String gotoOrders() {
        return "vendorOrders";
    }

    @RequestMapping(value="vendor-signup", method=RequestMethod.GET)
    public String gotoDesignerWelcomePage() {
        return "vendorSignup";
    }

    @RequestMapping(value="vendor-signup", method=RequestMethod.POST)
    public String gotoSignupConfirmationPage() {
        return "signupConfirmation";
    }
}
