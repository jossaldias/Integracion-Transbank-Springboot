package cl.duoc.bff.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.duoc.bff.clients.UserFeignClient;
import cl.duoc.bff.model.entities.UserEntity;

@Service
public class UserService {
    
    @Autowired
    UserFeignClient userFeignClient;

    public List<UserEntity> getAll() {
        return userFeignClient.getAll();
    }
}
