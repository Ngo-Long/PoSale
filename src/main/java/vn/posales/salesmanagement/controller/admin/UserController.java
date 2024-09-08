package vn.posales.salesmanagement.controller.admin;

import java.util.List;
import jakarta.validation.Valid;

import vn.posales.salesmanagement.domain.User;
import vn.posales.salesmanagement.service.UserService;
import vn.posales.salesmanagement.service.UploadService;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    private final UserService userService;
    private final UploadService uploadService;

    public UserController(UserService userService,
            UploadService uploadService) {
        this.userService = userService;
        this.uploadService = uploadService;
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> dataUsers = this.userService.fetchUsers();

        model.addAttribute("newUser", new User());
        model.addAttribute("dataUsers", dataUsers);

        return "admin/user/show";
    }

    @PostMapping("/admin/user/create") // POST
    public String createUserPage(Model model,
            @ModelAttribute("newUser") @Valid User dataUser,
            @RequestParam("avatarNameFile") MultipartFile file) {

        String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");

        dataUser.setAvatar(avatar);
        this.userService.handleSaveUser(dataUser);

        return "redirect:/admin/user";
    }

    @PostMapping("/admin/user/delete")
    public String postDeleteUser(Model model, @ModelAttribute("id") Long userId) {
        this.userService.deleteUserById(userId);
        return "redirect:/admin/user";
    }
}
