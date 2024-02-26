package com.frow.login;

import java.util.function.Function;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class LoginConfiguration {

	@Bean
	public InMemoryUserDetailsManager createUserDetailsManager() {

		// dummy users with designer and vendor roles
		UserDetails userDetails1 = createNewUser("user1", "1234", "ROLE_DESIGNER");
		UserDetails userDetails2 = createNewUser("user2", "123456", "ROLE_VENDOR");

		return new InMemoryUserDetailsManager(userDetails1, userDetails2);
	}

	private UserDetails createNewUser(String userName, String password, String customRole) {
		Function<String, String> passwordEncoder = input -> passwordEncoder().encode(input);

		UserDetails userDetails = User.builder()
				.passwordEncoder(passwordEncoder)
				.username(userName)
				.password(password)
				.authorities("USER", "ADMIN", customRole)
				.build();
		return userDetails;
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
    protected SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf(c -> c.disable());
		http.authorizeHttpRequests(
			auth -> auth.anyRequest().authenticated());
		http.headers().frameOptions().disable();
		// http
		// 	.formLogin(
		// 		login -> login
		// 			.loginPage("/login")
		// 			.loginProcessingUrl("/loginProcess"));
		http.formLogin(Customizer.withDefaults());
		return http.build();
    }
}
