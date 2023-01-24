package cl.duoc.database.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import cl.duoc.database.model.entities.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    
    @Query(value = "SELECT * FROM usuarios WHERE username = :username", nativeQuery = true)
    public UserEntity findUserByUsername(String username);

    @Query(value = "SELECT * FROM usuarios WHERE username = :username AND password = :password", nativeQuery = true)
    public UserEntity userCanLogin(String username, String password);
}
