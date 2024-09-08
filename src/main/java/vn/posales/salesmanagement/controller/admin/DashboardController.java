package vn.posales.salesmanagement.controller.admin;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.posales.salesmanagement.service.UserService;

@Controller
public class DashboardController {

    private UserService userService;

    public DashboardController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/admin")
    public String getDashboard(Model model) {
        return "admin/dashboard/show";
    }
}
