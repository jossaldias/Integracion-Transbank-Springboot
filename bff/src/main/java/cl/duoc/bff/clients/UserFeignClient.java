package cl.duoc.bff.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

import cl.duoc.bff.model.entities.UserEntity;

@FeignClient(name = "db-users", url = "http://localhost:8181/api/users")
public interface UserFeignClient {
    
    @GetMapping(path = "/all", produces = { "application/json" })
    public List<UserEntity> getAll();
}
