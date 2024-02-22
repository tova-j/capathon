package com.frow.designer;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.frow.database.FashionLineRepository;
import com.frow.enums.Season;
import com.frow.schemas.FashionLine;
import com.frow.user.CustomUser;
import com.frow.user.CustomUserRepository;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class DesignerController {

    @Autowired
    private CustomUserRepository userRepository;
    @Autowired
    private FashionLineRepository fashionLineRepository;

    @RequestMapping(value = "/designerSellHomepage", method = RequestMethod.GET) 
    public String goToDesignerSellHomepage(ModelMap model, HttpServletRequest request) { 
        HttpSession session = request.getSession(); 
        int userId = (int) session.getAttribute("userId"); 
        
        List<FashionLine> fashionLines =  fashionLineRepository.findAllFashionLinesByDesignerId(userId); 
        model.addAttribute("fashionLines",fashionLines);
        return "designerSellHomepage"; 
    }

    @RequestMapping(value = "/designerWelcome", method = RequestMethod.GET)
    public String gotoDesignerWelcomePage() {
        return "designerWelcome";
    }

    @GetMapping(value = "/designerSellHomepage/addNewFashionLineHomepage")
    public String goToCreateNewFashionLinePage() {
        return "createFashionLine";
    }

    @GetMapping(value="/designer/fashionLines/{fashionLineId}")
    public String openFashionLine(@PathVariable String fashionLineId, ModelMap model) {
        Integer id = Integer.parseInt(fashionLineId);
        Optional<FashionLine> fashionLine = fashionLineRepository.findById(id);
        
        if (fashionLine != null) {
            System.out.println(fashionLine.get());
            model.addAttribute("fashionLine", fashionLine.get());
            return "openFashionLine";
        }
        return "designerSellHomepage";
    }

    @PostMapping(value = "/addNewFashionLineHomepage")
    public String addNewFashionLinePage(HttpServletRequest reqeust, @RequestParam String fashionLineName,
            @RequestParam String fashionLineSeason, @RequestParam String fashionLineDescription) {
        HttpSession session = reqeust.getSession();
        Optional<CustomUser> user = userRepository.findById((int) session.getAttribute("userId"));
        if (user != null) {
            FashionLine fashionLine = new FashionLine(user.get().getId(),
                    user.get().getFirstName() + " " + user.get().getLastName(), fashionLineName, fashionLineDescription, 0, Season.SPRING);
                
            System.out.println(fashionLine);
            fashionLineRepository.save(fashionLine);
        }
        return "redirect:designerSellHomepage";
    }

    @RequestMapping(value = "contact-us", method = RequestMethod.GET)
    public String gotoContactUsPage() {
        return "contactUs";
    }

    @RequestMapping(value = "contact-us", method = RequestMethod.POST)
    public String gotoContactUsConfirmationPage() {
        return "contactUsConfirmation";
    }
}