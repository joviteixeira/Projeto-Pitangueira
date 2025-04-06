package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.repository;

import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.QuestionarioSocioeconomico;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.enums.Genero;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Map;

public interface QuestionarioRepository extends JpaRepository<QuestionarioSocioeconomico, Long> {

    @Query("SELECT AVG(q.idade) FROM QuestionarioSocioeconomico q")
    Double calcularMediaIdade();

    @Query("SELECT NEW map(q.genero as chave, COUNT(q) as valor) FROM QuestionarioSocioeconomico q GROUP BY q.genero")
    Map<Genero, Long> contarPorGenero();
}
