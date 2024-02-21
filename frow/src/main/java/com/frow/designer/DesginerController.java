package com.frow.designer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.frow.schemas.FashionLine;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class DesginerController {
    
    // private DesignerRepository designerRepository;

    // public DesginerController(DesignerRepository designerRepository) {
    //     this.designerRepository = designerRepository;
    // }
    @RequestMapping(value="/designerSellHomepage", method=RequestMethod.GET)
    public String gotoDesignerSellHomepage(ModelMap model, HttpServletRequest request) {
        //getAllFashionLinesByDesignerId
        // HttpSession session = request.getSession();
        // int userId = (int) session.getAttribute("userId");
        // List<FashionLine> fashionLines = designerRepository.findAllFashionLinesByDesignerId(userId);

        return "designerSellHomepage";
    }

    @RequestMapping(value="/designerWelcome", method=RequestMethod.GET)
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
