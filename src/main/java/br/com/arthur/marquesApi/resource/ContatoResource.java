package br.com.arthur.marquesApi.resource;

import br.com.arthur.marquesApi.model.Contato;
import br.com.arthur.marquesApi.repository.ContatoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("contatos")
public class ContatoResource {
    @Autowired
    private ContatoRepository contatoRepository;

    @GetMapping("/todos")
    public List<Contato> listarTodosContatos() {
        return contatoRepository.findAll();
    }

}
