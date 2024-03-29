package com.frow.login;

import java.util.Collection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.frow.user.CustomUser;
import com.frow.user.CustomUserRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	private CustomUserRepository userRepository;

	public LoginController(CustomUserRepository userRepository) {
		this.userRepository = userRepository;
	}

	// Home page for users that are authenticated
	@RequestMapping(value = "/home")
	public String goToHomepage(ModelMap model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			@SuppressWarnings("unchecked")
			Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) auth.getAuthorities();

			// Shows according view based on role
			if (authorities.contains(new SimpleGrantedAuthority("ROLE_DESIGNER"))) {
				model.put("role", "ROLE_DESIGNER");
			} else if (authorities.contains(new SimpleGrantedAuthority("ROLE_VENDOR"))) {
				model.put("role", "ROLE_VENDOR");
			}
			return "homepage";
		}
		return "";
	}

	@RequestMapping(value = "/customLogin")
	public String login() {
		return "login";
	}

	@PostMapping(value = "/loginProcess")
	public String loginProcess(HttpServletRequest request, @RequestParam String usernameParameter, @RequestParam String passwordParameter) {
		System.out.println(usernameParameter + " " + passwordParameter);
		CustomUser user = userRepository.findByUsernameAndPassword(usernameParameter, passwordParameter);
		if (user != null) {
			System.out.println("USER" + user);
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getId());
			
			if (user.getRole().equals("ROLE_DESIGNER")) {
				return "designerWelcome";
			} else if (user.getRole().equals("ROLE_VENDOR")) {
				return "vendorWelcome";
			}
		}
		return "login";
	}

	// handle log out
	@RequestMapping(value = "/customLogout", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request, HttpServletResponse response) {
		return "landingpage";
	}

	@RequestMapping(value="/authenticationCouncil", method=RequestMethod.GET)
	public String gotoAuthenticationCouncilPage() {
		return "authenticationCouncil";
	}
	

	// landing page for all users
	@RequestMapping(value = "/landingpage", method = RequestMethod.GET)
	public String goToLandingPage() {
		return "landingpage";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String rootPage() {
		return "landingpage";
	}
}
