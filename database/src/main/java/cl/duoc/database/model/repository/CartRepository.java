package cl.duoc.database.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import cl.duoc.database.model.entities.CartEntity;

@Repository
public interface CartRepository extends JpaRepository<CartEntity, Integer> {
    
    @Query(value = "SELECT * FROM carrito WHERE id_usuario = :id", nativeQuery = true)
    public List<CartEntity> findByUserId(String id);

    @Query(value = "SELECT IFNULL(SUM(precio_instrumento), 0) FROM carrito WHERE id_usuario = :id", nativeQuery = true)
    public Integer findCartTotalPrice(String id);
}
