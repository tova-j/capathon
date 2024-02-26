package com.frow.vendor;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

// -- imports used for broken function
// import java.util.Map;
// import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.frow.database.CartRecordRepository;
import com.frow.database.FashionLineRepository;
import com.frow.database.OrderRecordRepository;
import com.frow.database.OutfitRepository;
import com.frow.database.PieceRepository;
import com.frow.schemas.CartRecord;
import com.frow.schemas.FashionLine;
import com.frow.schemas.OrderRecord;
import com.frow.schemas.Outfit;
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
    private OrderRecordRepository orderRecordRepository;

    @Autowired
    private OutfitRepository outfitRepository;

    @Autowired
    private CartRecordRepository cartRepository;

    @Autowired
    private PieceRepository pieceRepository;

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
        Optional<FashionLine> optionalFashionline = fashionLineRepository.findById(id);
        FashionLine fashionline = optionalFashionline.orElse(null);
        if (fashionline != null) {
            // Find the outfits in the fashion line
            List<Outfit> outfits = outfitRepository.findOutfitsByFashionLineId(id);
            // Add the outfit's details and fashion line to the model
            model.addAttribute("fashionline", fashionline);
            model.addAttribute("outfits", outfits);
            // Return the outfit page
            return "outfitsView";
        }
        return "vendorShopPage";
    }

    @RequestMapping(value = "/outfitsView/{outfitId}")
    public String openOutfit(@PathVariable int outfitId, ModelMap model) {
        List<Piece> pieces = pieceRepository.findAllByOutfitId(outfitId);
        model.addAttribute("pieces", pieces);
        return "outfitShopPage";
    }

    @RequestMapping(value = "/outfitShopPage")
    public String gotoOutfitShopPage() {
        return "outfitShopPage";
    }

    @RequestMapping(value="/moodBoards", method=RequestMethod.GET)
    public String gotoMoodBoardsPage() {
        return "moodBoards";
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

    @RequestMapping(value = "vendor-signup", method = RequestMethod.POST)
    public String gotoSignupConfirmationPage() {
        return "signupConfirmation";
    }

    @RequestMapping(value = "/addPieceToCart/{pieceId}")
    public String addPieceToCart(HttpServletRequest request, @PathVariable String pieceId) {
        // Extract data from the request body

        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        Optional<Piece> optionalPiece = pieceRepository.findById(Integer.parseInt(pieceId));
        Piece piece = optionalPiece.orElse(null);
        if (piece != null) {
            CartRecord order = new CartRecord(Integer.parseInt(pieceId), userId, 1, piece.getName(), piece.getPrice());
            cartRepository.save(order);
            return "redirect:cart";
        } else {
            return "vendorShopPage";
        }
    }

    @PostMapping(value="/checkout")
    public String checkOut(HttpServletRequest request, @RequestBody List<CartRecord> cartRecords) {
        // used for troubleshooting- System.out.println("HERE " + cartRecords);
        // issue: cartRecords empty :( so the checkout page has been hardcoded with one pair of $20.99 jeans.

        // HttpSession session = request.getSession();
        // int userId = (int) session.getAttribute("userId");
        // Map<Integer,Integer> orderDetails = cartRecords.stream()
        // .collect(Collectors.groupingBy(CartRecord::getPieceId, Collectors.summingInt(CartRecord::getNumItems)));
        
        // double total = 0;
        // for (CartRecord cartRecord : cartRecords) {
        //     total += cartRecord.getPrice();
        // }
        // total = Math.round(total * 100.0) / 100.0;

        // orderRecordRepository.save(new OrderRecord(userId, total, orderDetails));
        return "checkout";
    }

    @RequestMapping(value = "/confirm")
    public String gotoconfirm() {
        return "confirm";
    }

}
