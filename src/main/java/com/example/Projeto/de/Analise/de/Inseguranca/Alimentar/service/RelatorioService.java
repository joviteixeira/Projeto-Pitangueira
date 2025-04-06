package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.service;

import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.repository.AvaliacaoRepository;
import com.example.Projeto.de.Analise.de.Inseguranca.Alimentar.repository.QuestionarioRepository;
import lombok.RequiredArgsConstructor;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class RelatorioService {

    private final AvaliacaoRepository avaliacaoRepository;
    private final QuestionarioRepository questionarioRepository;

    public byte[] gerarRelatorioCompletoPDF() {
        try (PDDocument document = new PDDocument()) {
            PDPage page = new PDPage();
            document.addPage(page);

            try (PDPageContentStream contentStream = new PDPageContentStream(document, page)) {
                // Configuração inicial
                contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
                contentStream.beginText();
                contentStream.newLineAtOffset(100, 700);
                contentStream.showText("Relatório de Insegurança Alimentar");
                contentStream.endText();

                // Adicionar dados dinâmicos
                adicionarDadosDemograficos(contentStream);
                adicionarEstatisticas(contentStream);
            }

            // Salvar em byte array
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            document.save(baos);
            return baos.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("Falha ao gerar relatório PDF", e);
        }
    }

    private void adicionarDadosDemograficos(PDPageContentStream contentStream) throws IOException {
        contentStream.setFont(PDType1Font.HELVETICA, 10);
        contentStream.beginText();
        contentStream.newLineAtOffset(50, 650);
        contentStream.showText("Dados Demográficos:");
        contentStream.newLineAtOffset(0, -20);
        contentStream.showText("Média de Idade: " + questionarioRepository.calcularMediaIdade());
        contentStream.endText();
    }

    private void adicionarEstatisticas(PDPageContentStream contentStream) throws IOException {
        contentStream.setFont(PDType1Font.HELVETICA, 10);
        contentStream.beginText();
        contentStream.newLineAtOffset(50, 600);
        contentStream.showText("Estatísticas de Insegurança Alimentar:");

        List<Map<String, Long>> estatisticas = avaliacaoRepository.classificarInsegurancaAlimentar();
        int yPosition = 580;

        for (Map<String, Long> estatistica : estatisticas) {
            contentStream.newLineAtOffset(0, -20);
            contentStream.showText(estatistica.get("classificacao") + ": " + estatistica.get("total"));
            yPosition -= 20;
        }

        contentStream.endText();
    }
}