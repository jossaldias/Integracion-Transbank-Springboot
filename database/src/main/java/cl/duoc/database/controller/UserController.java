package cl.duoc.database.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.duoc.database.model.entities.LoginCredentials;
import cl.duoc.database.model.entities.UserEntity;
import cl.duoc.database.services.UserService;

@RestController
@RequestMapping(path = "/api/users")
public class UserController {
    
    @Autowired
    UserService userService;

    @GetMapping(path = "/search/{id}", produces = { "application/json" })
    public UserEntity getUserById(@PathVariable String id) {
        return userService.getUserById(id);
    }

    @GetMapping(path = "/all", produces = { "application/json" })
    public List<UserEntity> getAll() {
        return userService.getAll();
    }

    @PostMapping(path = "/register", consumes = { "application/json" }, produces = { "application/json" })
    public UserEntity register(@RequestBody UserEntity userEntity) {
        return userService.register(userEntity);
    }

    @PostMapping(path = "/login", consumes = { "application/json" }, produces = { "application/json" })
    public UserEntity login(@RequestBody LoginCredentials loginCredentials) {
        return userService.login(loginCredentials);
    }

    @PutMapping(path = "/edit/{id}", produces = { "application/json" })
    public UserEntity changePassword(@PathVariable String id, @RequestParam String password) {
        return userService.changePassword(id, password);
    }
}
