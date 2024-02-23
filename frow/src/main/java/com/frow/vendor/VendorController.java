package com.frow.vendor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.frow.database.CartRecordRepository;
import com.frow.database.FashionLineRepository;
import com.frow.database.OutfitRepository;
import com.frow.schemas.FashionLine;
import com.frow.schemas.Outfit;
import com.frow.database.OrderRecordRepository;
import com.frow.database.PieceRepository;
import com.frow.schemas.CartItem;
import com.frow.schemas.CartRecord;
import com.frow.schemas.OrderRecord;
import com.frow.schemas.Piece;
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
    private OutfitRepository outfitRepository;
    @Autowired
    private CartRecordRepository cartRepository;

    @Autowired
    private PieceRepository pieceRepository;
    /*
     * @RequestMapping(value="vendor", method=RequestMethod.GET)
     * public String gotoVendorPage() {
     * return "vendorWelcome";
     * }
     */

    @RequestMapping(value = "/vendorWelcome")
    public String gotoVendorPage() {
        return "vendorWelcome";
    }

    @RequestMapping(value = "/vendorShopPage")
    public String gotoShopPage(ModelMap model) {
        List<CustomUser> designers = userRepository.findAllCustomerUsersByRole("ROLE_DESIGNER");
        model.addAttribute("designers", designers);
        return "vendorShopPage";
    }

    @RequestMapping(value = "/designerShopPage")
    public String designerPage(@RequestParam("id") int id, ModelMap model) {
        // Fetch the designer's details based on the ID
        CustomUser designer = userRepository.findAllCustomerUsersById(id);
        // Add the designer's full name to the model
        List<FashionLine> fashionLines = fashionLineRepository.findAllFashionLinesByDesignerId(id);

        // Add the designer's details and fashion lines to the model
        model.addAttribute("designer", designer);
        model.addAttribute("fashionLines", fashionLines);

        return "designerShopPage"; // Return the designer page
    }

    @RequestMapping(value = "/outfitsView")
    public String gotoOutfitShopPage(@RequestParam("id") int id, ModelMap model) {
        FashionLine fashionline = fashionLineRepository.findFashionLineById(id);
        // Add the designer's full name to the model
        List<Outfit> outfits = outfitRepository.findOutfitsByFashionLineId(id);
        // Add the designer's details and fashion lines to the model
        model.addAttribute("fashionline", fashionline);
        model.addAttribute("outfits", outfits);
        // Return the designer page
        return "outfitsView";
    }

    @RequestMapping(value = "/outfitsView/{outfitId}")
    public String openOutfit(@PathVariable int outfitId, ModelMap model) {
        List<Piece> pieces = pieceRepository.findAllByOutfitId(outfitId);
        model.addAttribute("pieces", pieces);
        System.out.println("PIEEECEECECE" + pieces);
        return "outfitShopPage";
    }

    @RequestMapping(value = "/outfitShopPage")
    public String gotoOutfitShopPage() {
        return "outfitShopPage";
    }

    @RequestMapping(value = "/addPieceToCart/cart")
    public String gotoCart(HttpServletRequest request, ModelMap model) {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        List<CartRecord> cartRecords = cartRepository.findAllByUserId(userId);

        double total = 0;
        for (CartRecord cartRecord : cartRecords) {
            total += cartRecord.getPrice();
        }
        total = Math.round(total * 100.0) / 100.0;

        model.addAttribute("cartRecords", cartRecords);
        model.put("total", total);
        return "cart";
    }

    @RequestMapping(value = "/vendorOrders")
    public String gotoOrders() {
        return "vendorOrders";
    }

    @RequestMapping(value = "vendor-signup", method = RequestMethod.GET)
    public String gotoVendorSignupPage() {
        return "vendorSignup";
    }

    @RequestMapping(value = "vendor-signup", method = RequestMethod.POST)
    public String gotoSignupConfirmationPage() {
        return "signupConfirmation";
    }

    @RequestMapping(value = "/addPieceToCart/{pieceId}")
    public String addPieceToCart(HttpServletRequest request, @PathVariable String pieceId) {
        // Extract data from the request body
        System.out.println("HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEERE  ");

        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        Piece piece = pieceRepository.findPieceById(Integer.parseInt(pieceId));
        CartRecord order = new CartRecord(Integer.parseInt(pieceId), userId, 1, piece.getName(), piece.getPrice());
        cartRepository.save(order);
        return "redirect:cart";
    }

    @PostMapping(value="/checkout")
    public String checkOut(HttpServletRequest request, @RequestParam List<CartRecord> cartRecords) {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        Map<Integer,Integer> orderDetails = cartRecords.stream()
        .collect(Collectors.groupingBy(CartRecord::getPieceId, Collectors.summingInt(CartRecord::getNumItems)));
        
        return "checkout";
    }

}
