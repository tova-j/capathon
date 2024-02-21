package com.frow.designer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class DesginerWebAppController {
    
    @RequestMapping(value="designer", method=RequestMethod.GET)
    public String gotoDesignerWelcomePage() {
        return "designerWelcome";
    }

    @RequestMapping(value="contact-us", method=RequestMethod.GET)
    public String gotoContactUsPage() {
        return "contactUs";
    }

    @RequestMapping(value="contact-us", method=RequestMethod.POST)
    public String gotoContactUsConfirmationPage() {
        return "contactUsConfirmation";
    }
    
    
}
