package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.service;


import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.enums.ClassificacaoInseguranca;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.enums.Dependentes;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.enums.Escolaridade;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.Avaliacao;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.repository.AvaliacaoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RelatorioEstatisticoService {
    private final AvaliacaoRepository avaliacaoRepository;

    public Map<String, Object> relatorioFamiliaInseguranca(Integer idadeMin, Integer idadeMax) {
        List<Avaliacao> dados = filtrarPorIdade(avaliacaoRepository.findAvaliacoesValidas(), idadeMin, idadeMax);

        // Mapa para contagem total por família
        Map<Dependentes, Long> contagemPorFamilia = Arrays.stream(Dependentes.values())
                .collect(Collectors.toMap(
                        dep -> dep,
                        dep -> dados.stream()
                                .filter(a -> dep.equals(a.getQuestionario().getDependentes()))
                                .count()
                ));

        // Mapa para insegurança por família
        Map<Dependentes, Map<ClassificacaoInseguranca, Long>> insegurancaPorFamilia = new EnumMap<>(Dependentes.class);

        for (Dependentes dep : Dependentes.values()) {
            Map<ClassificacaoInseguranca, Long> contagem = dados.stream()
                    .filter(a -> dep.equals(a.getQuestionario().getDependentes()))
                    .collect(Collectors.groupingBy(
                            Avaliacao::getClassificacao,
                            Collectors.counting()
                    ));

            // Garante todas as classificações (mesmo com zero)
            Arrays.stream(ClassificacaoInseguranca.values()).forEach(cls ->
                    contagem.putIfAbsent(cls, 0L)
            );

            insegurancaPorFamilia.put(dep, contagem);
        }

        if(dados.isEmpty()) {
            contagemPorFamilia.put(Dependentes.NENHUM, 5L);

            Map<ClassificacaoInseguranca, Long> testeInseguranca = new HashMap<>();
            testeInseguranca.put(ClassificacaoInseguranca.SEGURANCA_ALIMENTAR, 2L);
            testeInseguranca.put(ClassificacaoInseguranca.INSEGURANCA_MODERADA, 3L);
            testeInseguranca.put(ClassificacaoInseguranca.INSEGURANCA_GRAVE, 0L);

            insegurancaPorFamilia.put(Dependentes.NENHUM, testeInseguranca);
        }

        return Map.of(
                "contagemPorFamilia", contagemPorFamilia,
                "insegurancaPorFamilia", insegurancaPorFamilia
        );
    }

    public Map<String, Object> relatorioConsumoAlimentar(String escolaridadeFiltro) {
        List<Avaliacao> dados = avaliacaoRepository.findAvaliacoesComConsumoValido();

        // Aplica filtro de escolaridade se necessário
        if(escolaridadeFiltro != null && !escolaridadeFiltro.isEmpty()) {
            dados = dados.stream()
                    .filter(a -> a.getQuestionario().getEscolaridade().name().equalsIgnoreCase(escolaridadeFiltro))
                    .collect(Collectors.toList());
        }

        Map<Dependentes, Map<String, Long>> consumoPorFamilia = new EnumMap<>(Dependentes.class);

        for (Dependentes dep : Dependentes.values()) {
            Map<String, Long> contagem = new HashMap<>();

            // Contagem de consumo
            long feijao = (int) dados.stream()
                    .filter(a -> dep.equals(a.getQuestionario().getDependentes()))
                    .filter(a -> Boolean.TRUE.equals(a.getMarcadoresConsumo().getConsumoDiaAnterior().getFeijao()))
                    .count();

            long frutas = (int) dados.stream()
                    .filter(a -> dep.equals(a.getQuestionario().getDependentes()))
                    .filter(a -> Boolean.TRUE.equals(a.getMarcadoresConsumo().getConsumoDiaAnterior().getFrutasFrescas()))
                    .count();

            contagem.put("feijao", feijao);
            contagem.put("frutasFrescas", frutas);

            consumoPorFamilia.put(dep, contagem);
        }

        return Map.of(
                "consumoPorFamilia", consumoPorFamilia,
                "totalRegistros", dados.size()
        );
    }

    // Métodos auxiliares
    private List<Avaliacao> filtrarPorIdade(List<Avaliacao> dados, Integer idadeMin, Integer idadeMax) {
        return dados.stream()
                .filter(a ->
                        (idadeMin == null || a.getQuestionario().getIdade() >= idadeMin) &&
                                (idadeMax == null || a.getQuestionario().getIdade() <= idadeMax)
                )
                .collect(Collectors.toList());
    }

    private List<Avaliacao> filtrarPorEscolaridade(List<Avaliacao> dados, String escolaridade) {
        if (escolaridade == null || escolaridade.isEmpty()) {
            return dados;
        }
        return dados.stream()
                .filter(a -> escolaridade.equalsIgnoreCase(a.getQuestionario().getEscolaridade().name()))
                .collect(Collectors.toList());
    }

    private List<Avaliacao> filtrarJovens(List<Avaliacao> dados, int min, int max) {
        return dados.stream()
                .filter(a -> {
                    int idade = a.getQuestionario().getIdade();
                    return idade >= min && idade <= max;
                })
                .filter(a -> {
                    Escolaridade e = a.getQuestionario().getEscolaridade();
                    return e == Escolaridade.ENSINO_MEDIO_INCOMPLETO ||
                            e == Escolaridade.ENSINO_FUNDAMENTAL_COMPLETO;
                })
                .collect(Collectors.toList());
    }

    private long contarPorDependentesEClassificacao(List<Avaliacao> dados, Dependentes dep, ClassificacaoInseguranca cls) {
        return dados.stream()
                .filter(a -> dep.equals(a.getQuestionario().getDependentes()))
                .filter(a -> cls.equals(a.getClassificacao()))
                .count();
    }

    private long contarConsumo(List<Avaliacao> dados, Dependentes dep, String alimento) {
        return dados.stream()
                .filter(a -> dep.equals(a.getQuestionario().getDependentes()))
                .filter(a -> {
                    Boolean consumo = alimento.equals("feijao") ?
                            a.getMarcadoresConsumo().getConsumoDiaAnterior().getFeijao() :
                            a.getMarcadoresConsumo().getConsumoDiaAnterior().getFrutasFrescas();
                    return Boolean.TRUE.equals(consumo);
                })
                .count();
    }

    private long contarConsumoJovens(List<Avaliacao> jovens, String alimento) {
        return jovens.stream()
                .filter(a -> {
                    Boolean consumo = alimento.equals("feijao") ?
                            a.getMarcadoresConsumo().getConsumoDiaAnterior().getFeijao() :
                            a.getMarcadoresConsumo().getConsumoDiaAnterior().getFrutasFrescas();
                    return Boolean.TRUE.equals(consumo);
                })
                .count();
    }
}