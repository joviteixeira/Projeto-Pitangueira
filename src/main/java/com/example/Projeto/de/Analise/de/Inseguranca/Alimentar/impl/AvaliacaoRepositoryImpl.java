package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.impl;

import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.Avaliacao;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.repository.AvaliacaoRepositoryCustom;
import jakarta.persistence.EntityManager;
import jakarta.persistence.criteria.*;
import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
public class AvaliacaoRepositoryImpl implements AvaliacaoRepositoryCustom {

    private final EntityManager em;


    @Override
    public List<Avaliacao> findByFiltros(Map<String, String> filtros) {
        // Criar o CriteriaBuilder e a CriteriaQuery
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Avaliacao> query = cb.createQuery(Avaliacao.class);
        Root<Avaliacao> root = query.from(Avaliacao.class);

        // Join com a tabela questionario (caso esteja buscando por campos relacionados)
        Join<?, ?> socio = root.join("questionario", JoinType.LEFT);

        // Lista de predicates que representará as condições da consulta
        List<Predicate> predicates = new ArrayList<>();

        // Verificar e aplicar filtros
        if (filtros.containsKey("genero") && !filtros.get("genero").trim().isEmpty()) {
            predicates.add(cb.equal(socio.get("genero"), filtros.get("genero")));
        }

        if (filtros.containsKey("racaCor") && !filtros.get("racaCor").trim().isEmpty()) {
            predicates.add(cb.equal(socio.get("racaCor"), filtros.get("racaCor")));
        }

        if (filtros.containsKey("idadeMin") && !filtros.get("idadeMin").trim().isEmpty()) {
            try {
                predicates.add(cb.ge(socio.get("idade"), Integer.parseInt(filtros.get("idadeMin"))));
            } catch (NumberFormatException e) {
                // Tratar erro caso o valor não seja numérico
                // Podemos lançar uma exceção ou apenas ignorar o filtro
                System.out.println("Erro ao processar o filtro de idade mínima: " + e.getMessage());
            }
        }

        if (filtros.containsKey("idadeMax") && !filtros.get("idadeMax").trim().isEmpty()) {
            try {
                predicates.add(cb.le(socio.get("idade"), Integer.parseInt(filtros.get("idadeMax"))));
            } catch (NumberFormatException e) {
                // Tratar erro caso o valor não seja numérico
                System.out.println("Erro ao processar o filtro de idade máxima: " + e.getMessage());
            }
        }

        if (filtros.containsKey("escolaridade") && !filtros.get("escolaridade").trim().isEmpty()) {
            predicates.add(cb.equal(socio.get("escolaridade"), filtros.get("escolaridade")));
        }

        if (filtros.containsKey("emprego") && !filtros.get("emprego").trim().isEmpty()) {
            predicates.add(cb.equal(socio.get("emprego"), filtros.get("emprego")));
        }

        // Adicionar a condição WHERE na consulta
        query.where(cb.and(predicates.toArray(new Predicate[0])));

        // Criar a consulta e retornar os resultados
        return em.createQuery(query.select(root)).getResultList();
    }
}
