package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.controller;

import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.dto.RascunhoRequest;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.dto.RascunhoResponse;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.model.User;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.service.RascunhoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/rascunho")
@RequiredArgsConstructor
public class RascunhoController {
    private final RascunhoService rascunhoService;

    @PostMapping
    public ResponseEntity<Void> salvarRascunho(@RequestBody RascunhoRequest request,
                                               @AuthenticationPrincipal User user) {
        rascunhoService.salvarRascunho(user, request.getDados());
        return ResponseEntity.ok().build();
    }

    @GetMapping
    public ResponseEntity<RascunhoResponse> carregarRascunho(@AuthenticationPrincipal User user) {
        return ResponseEntity.ok(rascunhoService.carregarRascunho(user));
    }
}
