package com.frow.login;

import java.util.Collection;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	// Home page
	@RequestMapping(value = "/")
	public String goToHomepage(ModelMap model) {
		Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) SecurityContextHolder
				.getContext().getAuthentication().getAuthorities();
		
		// Shows according view based on role
		if (authorities.contains(new SimpleGrantedAuthority("ROLE_DESIGNER"))) {
			model.put("role", "ROLE_DESIGNER");
		} else if (authorities.contains(new SimpleGrantedAuthority("ROLE_VENDOR"))) {
			model.put("role", "ROLE_VENDOR");
		}

		// if user does not have either role, they see just homepage
		return "homepage";
	}
}
