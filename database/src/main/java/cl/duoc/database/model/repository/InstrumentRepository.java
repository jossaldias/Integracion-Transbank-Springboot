package cl.duoc.database.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import cl.duoc.database.model.entities.InstrumentEntity;

@Repository
public interface InstrumentRepository extends JpaRepository<InstrumentEntity, Integer> {
    
    @Query(value = "SELECT * FROM instrumentos WHERE categoria = :category", nativeQuery = true)
    public List<InstrumentEntity> findByCategory(String category);
}
