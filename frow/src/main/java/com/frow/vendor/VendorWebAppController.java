package com.frow.vendor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class VendorWebAppController {
    
    @RequestMapping(value="vendor", method=RequestMethod.GET)
    public String gotoVendorPage() {
        return "vendorWelcome";
    }
}
