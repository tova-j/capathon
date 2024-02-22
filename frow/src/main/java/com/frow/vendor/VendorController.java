package com.frow.vendor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.frow.database.FashionLineRepository;
import com.frow.user.CustomUser;
import com.frow.user.CustomUserRepository;

@Controller
public class VendorController {
    
    @Autowired
    private CustomUserRepository userRepository;

    @Autowired
    private FashionLineRepository fashionLineRepository;
    /*@RequestMapping(value="vendor", method=RequestMethod.GET)
    public String gotoVendorPage() {
        return "vendorWelcome";
    }*/

    @RequestMapping(value="/vendorWelcome")
    public String gotoVendorPage() {
        return "vendorWelcome";
    }

    @RequestMapping(value="/vendorShopPage")
    public String gotoShopPage(ModelMap model) {
        List<CustomUser> designers = userRepository.findAllCustomerUsersByRole("ROLE_DESIGNER");
        model.addAttribute("designers", designers);
        return "vendorShopPage";
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

    @RequestMapping(value="signup", method=RequestMethod.GET)
    public String gotoDesignerWelcomePage() {
        return "vendorSignup";
    }

    @RequestMapping(value="signup", method=RequestMethod.POST)
    public String gotoSignupConfirmationPage() {
        return "signupConfirmation";
    }
}
