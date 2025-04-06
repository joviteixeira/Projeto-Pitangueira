package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.repository;

import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.RascunhoAvaliacao;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RascunhoRepository extends JpaRepository<RascunhoAvaliacao, Long> {
    Optional<RascunhoAvaliacao> findByUser(User user);
}
