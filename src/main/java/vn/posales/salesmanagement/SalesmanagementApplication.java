package vn.posales.salesmanagement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootApplication

@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class SalesmanagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(SalesmanagementApplication.class, args);
	}

}
