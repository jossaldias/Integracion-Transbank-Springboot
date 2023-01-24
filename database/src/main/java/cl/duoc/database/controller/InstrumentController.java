package cl.duoc.database.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import cl.duoc.database.model.entities.InstrumentEntity;
import cl.duoc.database.services.InstrumentService;


@RestController
@RequestMapping(path = "/api/instruments")
public class InstrumentController {
    
    @Autowired
    InstrumentService instrumentService;

    @GetMapping(path = "/search/{id}", produces = { "application/json" })
    public InstrumentEntity getInstrumentById(@PathVariable String id) {
        return instrumentService.getInstrumentById(id);
    }

    @GetMapping(path = "/category/{category}", produces = { "application/json" })
    public List<InstrumentEntity> getInstrumentByCategory(@PathVariable String category) {
        return instrumentService.getInstrumentByCategory(category);
    }

    @GetMapping(path = "/all")
    public List<InstrumentEntity> getAll() {
        return instrumentService.getAll();
    }
    
}
