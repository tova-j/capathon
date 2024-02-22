package com.frow.vendor;

import java.util.Collection;
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
import com.frow.database.OrderRecordRepository;
import com.frow.schemas.OrderRecord;
import com.frow.user.CustomUser;
import com.frow.user.CustomUserRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class VendorController {
    
    @Autowired
    private CustomUserRepository userRepository;

    @Autowired
    private FashionLineRepository fashionLineRepository;

    @Autowired
    private OrderRecordRepository orderRecordRepository;
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
    public String gotoOrders(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(); 
        if (session.getAttribute("userId") == null) {
            // if have not used the custom session login, there is no userId attribute
            // so trying to convert to (int) below returns null pointer exception
            return "login";
        }
        int userId = (int) session.getAttribute("userId");
        model.put("orders", getExistingOrderInformation(userId));
        return "vendorOrders";
    }

    // additional function to get orders by user id
    private Collection<OrderRecord> getExistingOrderInformation(int userId) {
        return orderRecordRepository.findOrderByUserId(userId);
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
