package com.frow.vendor;

import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String designerPage(@RequestParam("id") int id, ModelMap model) {
        // Fetch the designer's details based on the ID
        CustomUser designer = userRepository.findAllCustomerUsersById(id);
        // Add the designer's full name to the model
        model.addAttribute("designer", designer);
        return "designerShopPage"; // Return the designer page
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
    public String gotoVendorSignupPage() {
        return "vendorSignup";
    }

    @RequestMapping(value="vendor-signup", method=RequestMethod.POST)
    public String gotoSignupConfirmationPage() {
        return "signupConfirmation";
    }
}
