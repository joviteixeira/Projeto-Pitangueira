package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.common.dto;

import lombok.Data;

@Data
public class RascunhoResponse {
    private String dados;

    public RascunhoResponse(String dados) {
        this.dados = dados;
    }
}