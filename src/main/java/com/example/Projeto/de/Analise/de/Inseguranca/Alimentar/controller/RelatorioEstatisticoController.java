package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.controller;

import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.dto.RelatorioFamiliaDTO;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.enums.ClassificacaoInseguranca;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.enums.Dependentes;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.service.RelatorioEstatisticoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/relatorios")
@RequiredArgsConstructor
public class RelatorioEstatisticoController {
    private final RelatorioEstatisticoService relatorioService;

    @GetMapping("/familia-inseguranca")
    public ResponseEntity<Map<String, Object>> getFamiliaInseguranca(
            @RequestParam(required = false) Integer idadeMin,
            @RequestParam(required = false) Integer idadeMax) {

        Map<String, Object> dados = relatorioService.relatorioFamiliaInseguranca(idadeMin, idadeMax);
        return ResponseEntity.ok(dados);
    }

    @GetMapping("/familia-consumo")
    public ResponseEntity<Map<String, Object>> getFamiliaConsumo(
            @RequestParam(required = false) String escolaridade) {

        Map<String, Object> dados = relatorioService.relatorioConsumoAlimentar(escolaridade);
        return ResponseEntity.ok(dados);
    }

}