package cl.duoc.bff.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.duoc.bff.model.entities.UserEntity;
import cl.duoc.bff.services.UserService;

@RestController
@RequestMapping(path = "/users")
public class UserController {
    
    @Autowired
    UserService userService;

    @GetMapping(path = "/all", produces = { "application/json" })
    public List<UserEntity> getAll() {
        return userService.getAll();
    }
}
