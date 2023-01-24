package cl.duoc.database.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.duoc.database.model.entities.CartEntity;
import cl.duoc.database.model.repository.CartRepository;

@Service
public class CartService {
    
    @Autowired
    CartRepository cartRepository;

    public List<CartEntity> getCartByUserId(String id) {
        try {
            return cartRepository.findByUserId(id);
        } catch (Exception e) {
            return null;
        }
    }

    public Integer getCartTotalPrice(String id) {
        try {
            return cartRepository.findCartTotalPrice(id);
        } catch (Exception e) {
            return 0;
        }
    }
}
