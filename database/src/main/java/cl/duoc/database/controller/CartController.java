package cl.duoc.database.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.duoc.database.model.entities.CartEntity;
import cl.duoc.database.services.CartService;

@RestController
@RequestMapping(path = "/api/cart")
public class CartController {
    
    @Autowired
    CartService cartService;

    @GetMapping(path = "/{id}", produces = { "application/json" })
    public List<CartEntity> getCartByUserId(@PathVariable String id) {
        return cartService.getCartByUserId(id);
    }

    @PostMapping(path = "/buy", produces = { "application/json "}, consumes = { "application/json" })
    public CartEntity buyInstrument(@RequestBody CartEntity cartEntity) {
        return cartService.buyInstrument(cartEntity);
    }

    @GetMapping(path = "/{id}/price")
    public Integer getCartTotalPrice(@PathVariable String id) {
        return cartService.getCartTotalPrice(id);
    }
}
