package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.service;

import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.dto.RascunhoResponse;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.exceptions.RercusoNaoEncontradoException;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.RascunhoAvaliacao;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.User;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.repository.RascunhoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class RascunhoService {

    private final RascunhoRepository rascunhoRepository;

    public void salvarRascunho(User user, String dados) {
        Optional<RascunhoAvaliacao> rascunhoOptional = rascunhoRepository.findByUser(user);
        RascunhoAvaliacao rascunho = rascunhoOptional.orElse(new RascunhoAvaliacao());

        rascunho.setUser(user);
        rascunho.setDadosParciais(dados);
        rascunho.setDataAtualizacao(LocalDateTime.now());

        if (rascunho.getDataCriacao() == null) {
            rascunho.setDataCriacao(LocalDateTime.now());
        }

        rascunhoRepository.save(rascunho);
    }

    public RascunhoResponse carregarRascunho(User user) {
        return rascunhoRepository.findByUser(user)
                .map(r -> new RascunhoResponse(r.getDadosParciais()))
                .orElseThrow(() -> new RercusoNaoEncontradoException(("Nenhum rascunho encontrado")));
    }
}