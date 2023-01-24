package cl.duoc.database.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.duoc.database.model.entities.InstrumentEntity;
import cl.duoc.database.model.repository.InstrumentRepository;

@Service
public class InstrumentService {
    
    @Autowired
    InstrumentRepository instrumentRepository;

    public InstrumentEntity getInstrumentById(String id) {
        try {
            int number = Integer.parseInt(id);

            return instrumentRepository.findById(number).get();
        } catch (Exception e) {
            return null;
        }
    }

    public List<InstrumentEntity> getInstrumentByCategory(String category) {
        try {
            return instrumentRepository.findByCategory(category);
        } catch (Exception e) {
            return null;
        }
    }

    public List<InstrumentEntity> getAll() {
        return instrumentRepository.findAll();
    }
}
