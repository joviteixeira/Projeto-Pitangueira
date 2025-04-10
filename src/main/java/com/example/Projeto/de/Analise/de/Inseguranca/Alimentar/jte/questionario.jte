<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projetos IFBA Login</title>
    <link rel="stylesheet" href="/css/questionario.css">
</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="/jte/home.jte">Página Inicial</a></li>
                <li class="btnlogin"><a href="/jte/loginUsuario.jte">Login</a></li>
                <li class="btncadastrar"><a href="/jte/cadastro.jte">Cadastro</a></li>
            </ul>
        </nav>
    </header>

    <form id="formulariocompleto">
    <div id="divinicial" class="section">
        <h2>1. Questionário Socioeconômico</h2>
        <section>
            <!--Pergunta 1-->

            <h3>Nome:</h3>
            <div class="nome">
                <input type="text" id="p1" name="pergunta1" placeholder="Digite o seu nome..." required>
            </div>

            <!--Pergunta 2-->
            <h3>Idade:</h3>
            <div class="idade">
                <input type="text" id="p2" name="pergunta2" placeholder="Digite a sua idade..." required>
            </div>

            <!--Pergunta 3-->
            <h3>Gênero:</h3>
            <div class="genero">
                <input type="radio" value="Masculino" id="p3a" name="pergunta3" required>
                <label for="p3a">Masculino</label>
                <p></p>
                <input type="radio" value="Feminino" id="p3b" name="pergunta3" required>
                <label for="p3b">Feminino</label>
                <p></p>
                <input type="radio" value="Transgênero" id="p3c" name="pergunta3" required>
                <label for="p3c">Transgênero</label>
                <p></p>
                <input type="radio" value="Não binário" id="p3d" name="pergunta3" required>
                <label for="p3d">Não binário</label>

                <p>Outro <input type="text" id="p3e" name="pergunta3" placeholder="Digite o gênero..." required></p>
            </div>

            <!--Pergunta 4-->
            <h3>Raça/cor:</h3>
            <div class="raca">
                <input type="radio" value="Branco" id="p4a" name="pergunta4" required>
                <label for="p4a">Branco</label>
                <p></p>
                <input type="radio" value="Preto" id="p4b" name="pergunta4" required>
                <label for="p4b">Preto</label>
                <p></p>
                <input type="radio" value="Pardo" id="p4c" name="pergunta4" required>
                <label for="p4c">Pardo</label>
                <p></p>
                <input type="radio" value="Povos originários" id="p4d" name="pergunta4" required>
                <label for="p4d">Povos originários</label>
            </div>

            <!--Pergunta 5-->
            <h3>Escolaridade:</h3>
            <div class="escolaridade">
                <input type="radio" value="Ensino médio incompleto" id="p5a" name="pergunta5" required>
                <label for="p5a">Ensino médio incompleto</label>
                <p></p>
                <input type="radio" value="Ensino médio completo" id="p5b" name="pergunta5" required>
                <label for="p5b">Ensino médio completo</label>
                <p></p>
                <input type="radio" value="Graduação incompleta" id="p5c" name="pergunta5" required>
                <label for="p5c">Graduação incompleta</label>
                <p></p>
                <input type="radio" value="Graduação completa" id="p5d" name="pergunta5" required>
                <label for="p5d">Graduação completa</label>
                <p></p>
                <input type="radio" value="Ensino fundamental incompleto" id="p5e" name="pergunta5" required>
                <label for="p5e">Ensino fundamental incompleto</label>
                <p></p>
                <input type="radio" value="Ensino fundamental completo" id="p5f" name="pergunta5" required>
                <label for="p5f">Ensino fundamental completo</label>
                <p></p>
                <input type="radio" value="Prefiro não informar" id="p5g" name="pergunta5" required>
                <label for="p5e">Prefiro não informar</label>
            </div>

            <!--Pergunta 6-->
            <h3>Estado civil:</h3>
            <div class="estadocivil">
                <input type="radio" value="Casado" id="p6a" name="pergunta6" required>
                <label for="p6a">Casado</label>
                <p></p>
                <input type="radio" value="Viúvo" id="p6b" name="pergunta6" required>
                <label for="p6b">Viúvo</label>
                <p></p>
                <input type="radio" value="Divorciado" id="p6c" name="pergunta6" required>
                <label for="p6c">Divorciado</label>
                <p></p>
                <input type="radio" value="Separado" id="p6d" name="pergunta6" required>
                <label for="p6d">Separado</label>
                <p></p>
                <input type="radio" value="Solteiro" id="p6e" name="pergunta6" required>
                <label for="p6e">Solteiro</label>
                <p></p>
                <input type="radio" value="Prefiro não informar" id="p6f" name="pergunta6" required>
                <label for="p6f">Prefiro não informar</label>
            </div>

            <!--Pergunta 7-->
            <h3>Emprego:</h3>
            <div class="emprego">
                <input type="radio" value="Meio período" id="p7a" name="pergunta7" required>
                <label for="p7a">Meio período</label>
                <p></p>
                <input type="radio" value="Desempregado" id="p7b" name="pergunta7" required>
                <label for="p7b">Desempregado</label>
                <p></p>
                <input type="radio" value="Incapaz de trabalhar" id="p7c" name="pergunta7" required>
                <label for="p7c">Incapaz de trabalhar</label>
                <p></p>
                <input type="radio" value="Aposentado" id="p7d" name="pergunta7" required>
                <label for="p7d">Aposentado</label>
                <p></p>
                <input type="radio" value="Prefiro não informar" id="p7e" name="pergunta7" required>
                <label for="p7e">Prefiro não informar</label>

                <p>Outro <input type="text" id="p7f" name="pergunta7" placeholder="Digite o emprego..." required></p>
            </div>

            <!--Pergunta 8-->
            <h3>Auxílios:</h3>
            <div class="auxilios">
                <input type="radio" value="Bolsa família" id="p8a" name="pergunta8" required>
                <label for="p8a">Bolsa família</label>
                <p></p>
                <p>Outros, quais? <input type="text" id="p8b" name="pergunta8" placeholder="Digite os auxílios..." required>
                </p>
            </div>

            <!--Pergunta 9-->
            <h3>Família e dependentes:</h3>
            <div class="familia">
                <input type="radio" value="Nenhum" id="p9a" name="pergunta9" required>
                <label for="p9a">Nenhum</label>
                <p></p>
                <input type="radio" value="Um" id="p9b" name="pergunta9" required>
                <label for="p9b">Um</label>
                <p></p>
                <input type="radio" value="Dois" id="p9c" name="pergunta9" required>
                <label for="p9c">Dois</label>
                <p></p>
                <input type="radio" value="Três" id="p9d" name="pergunta9" required>
                <label for="p9d">Três</label>
                <p></p>
                <input type="radio" value="Quatro" id="p9e" name="pergunta9" required>
                <label for="p9e">Quatro</label>
                <p></p>
                <input type="radio" value="Cinco ou mais" id="p9f" name="pergunta9" required>
                <label for="p9f">Cinco ou mais</label>
                <p></p>
                <input type="radio" value="Prefiro não informar" id="p9g" name="pergunta9" required>
                <label for="p9g">Prefiro não informar</label>
            </div>

            <!--Pergunta 10-->
            <h3>Religião:</h3>
            <div class="religiao">
                <input type="radio" value="Católico" id="p10a" name="pergunta10" required>
                <label for="p10a">Católico</label>
                <p></p>
                <input type="radio" value="Evangélico" id="p10b" name="pergunta10" required>
                <label for="p10b">Evangélico</label>
                <p></p>
                <input type="radio" value="Candomblé" id="p10c" name="pergunta10" required>
                <label for="p10c">Candomblé</label>
                <p></p>
                <input type="radio" value="Umbanda" id="p10d" name="pergunta10" required>
                <label for="p10d">Umbanda</label>
                <p></p>
                <input type="radio" value="Espírita" id="p10e" name="pergunta10" required>
                <label for="p10e">Espírita</label>
                <p></p>
                <input type="radio" value="Nenhuma" id="p10f" name="pergunta10" required>
                <label for="p10f">Nenhuma</label>
                <p></p>
                <input type="radio" value="Prefiro não informar" id="p10g" name="pergunta10" required>
                <label for="p10g">Prefiro não informar</label>

                <p>Outra <input type="text" id="p10h" name="pergunta10" placeholder="Digite a religião..." required></p>
            </div>
            <div>
                <button type="button" onclick="nextStep1">Próximo</button>
            </div>

        </section>
    </div>

    <div id="divsecundaria" class="section">
        <p> </p>
        <legend>
            <h2>2. Coleta de marcadores de consumo alimentar</h2>
        </legend>
        <p>*OBS: CRIANÇAS COM 2 ANOS OU MAIS, ADOLESENTES, ADULTOS, GESTANTES E
            IDOSOS!*</p>

        <!--Pergunta 11-->
        <h3>Você tem costume de fazer refeições mexendo no computador ou celular?</h3>
        <div class="refeicao1">
            <input type="radio" value="Sim" id="p11a" name="pergunta11" required>
            <label for="p11a">Sim</label>
            <p></p>
            <input type="radio" value="Não" id="p11a" name="pergunta11" required>
            <label for="p11b">Não</label>
            <p></p>
            <input type="radio" value="NãoSei" id="p11a" name="pergunta11" required>
            <label for="p11c">Não sei</label>
        </div>

        <!--Pergunta 12-->
        <h3>Quais refeições você faz ao longo do dia?</h3>
        <div class="refeicao2">
            <input type="radio" value="CafeDaManha" id="p12a" name="pergunta12" required>
            <label for="p12a">Café da Manhã</label>
            <p></p>
            <input type="radio" value="LancheDaManha" id="p12b" name="pergunta12" required>
            <label for="p12b">Lanche da Manhã</label>
            <p></p>
            <input type="radio" value="Almoco" id="p12c" name="pergunta12" required>
            <label for="p12c">Almoço</label>
            <p></p>
            <input type="radio" value="LancheDaTarde" id="p12d" name="pergunta12" required>
            <label for="p12d">Lanche da Tarde</label>
            <p></p>
            <input type="radio" value="Jantar" id="p12e" name="pergunta12" required>
            <label for="p12e">Jantar</label>
            <p></p>
            <input type="radio" value="Ceia" id="p12f" name="pergunta12" required>
            <label for="p12f">Ceia/Lanche da Noite</label>
        </div>

        <h3>ONTEM, VOCÊ CONSUMIU:</h3>
        <div class="consumo">
            <table id="table1" border="1">
                <tr>
                    <td>
                        <p></p>
                    </td>
                    <td>SIM!</td>
                    <td>NÃO!</td>
                    <td>NÃO SEI!</td>
                </tr>

                <!--Pergunta 13-->
                <tr>
                    <td>Feijão</td>
                    <td><input type="radio" value="Sim" id="p13a" name="pergunta13" required></td>
                    <td><input type="radio" value="Não" id="p13b" name="pergunta13" required></td>
                    <td><input type="radio" value="Não sei" id="p13c" name="pergunta13" required></td>
                </tr>

                <!--Pergunta 14-->
                <tr>
                    <td>Frutas frescas(não considerar suco de frutas)</td>
                    <td><input type="radio" value="Sim" id="p14a" name="pergunta14" required></td>
                    <td><input type="radio" value="Não" id="p14b" name="pergunta14" required></td>
                    <td><input type="radio" value="Não sei" id="p14c" name="pergunta14" required></td>
                </tr>
                <tr>
                    <td>Verduras e/ou legumes (não considerar batata, mandioca, aipim, macaxeira, cará e inhame)
                    </td>

                    <!--Pergunta 15-->
                    <td><input type="radio" value="Sim" id="p15a" name="pergunta15" required></td>
                    <td><input type="radio" value="Não" id="p15b" name="pergunta15" required></td>
                    <td><input type="radio" value="Não sei" id="p15c" name="pergunta15" required></td>
                </tr>

                <!--Pergunta 16-->
                <tr>
                    <td>Hambúrguer e/ou embutidos(presunto, mortadela, salame, linguiça, salsicha)</td>
                    <td><input type="radio" value="Sim" id="p16a" name="pergunta16" required></td>
                    <td><input type="radio" value="Não" id="p16b" name="pergunta16" required></td>
                    <td><input type="radio" value="Não sei" id="p16c" name="pergunta16" required></td>
                </tr>

                <!--Pergunta 17-->
                <tr>
                    <td>Bebidas adoçadas(refrigerante, suco de caixinha, suco em pó, água de coco de caixinha,
                        xaropes de guaraná/groselha, suco de fruta com adição de açúcar)</td>
                    <td><input type="radio" value="Sim" id="p17a" name="pergunta17" required></td>
                    <td><input type="radio" value="Não" id="p17b" name="pergunta17" required></td>
                    <td><input type="radio" value="Não sei" id="p17c" name="pergunta17" required></td>
                </tr>

                <!--Pergunta 18-->
                <tr>
                    <td>Macarrão instantâneo, salgidinhos de pacote ou biscoitos salgados</td>
                    <td><input type="radio" value="Sim" id="p18a" name="pergunta18" required></td>
                    <td><input type="radio" value="Não" id="p18b" name="pergunta18" required></td>
                    <td><input type="radio" value="Não sei" id="p18c" name="pergunta18" required></td>
                </tr>

                <!--Pergunta 19-->
                <tr>
                    <td>Biscoitos recheados, doces ou guloseimas (balas, pirulitos, chiclete, caramelo,
                        gelatina)</td>
                    <td><input type="radio" value="Sim" id="p19a" name="pergunta19" required></td>
                    <td><input type="radio" value="Não" id="p19b" name="pergunta19" required></td>
                    <td><input type="radio" value="Não sei" id="p19c" name="pergunta19" required></td>
                </tr>
            </table>
        </div>
        <div>
            <button type="button" onclick="nextStep2">Próximo</button>
        </div>
        </section>
    </div>

    <div id="divterciaria" class="section">
        <p></p>
        <legend>
            <h2>3. II VIGISAN- Escala Brasileira de Insegurança Alimentar (EBIA) com 8
                perguntas.</h2>
        </legend>
        <div class="ebia">
            <table id="table2" border="1">
                <tr>
                    <td>
                        <p></p>
                    </td>
                    <td>SIM!</td>
                    <td>NÃO!</td>
                    <td>NÃO SEI!</td>
                </tr>
                <!--Pergunta 20-->
                <tr>
                    <td>1. Nos últimos três meses, os moradores deste
                        domicílio tiveram a preocupação de que os
                        alimentos acabassem antes de poderem
                        comprar ou receber mais comida?</td>
                    <td><input type="radio" value="Sim" id="p20a" name="pergunta20" required></td>
                    <td><input type="radio" value="Não" id="p20b" name="pergunta20" required></td>
                    <td><input type="radio" value="Não sei" id="p20c" name="pergunta20" required></td>
                </tr>
                <!--Pergunta 21-->
                <tr>
                    <td>2. Nos últimos três meses, os alimentos acabaram
                        antes que os moradores deste domicílio tivessem
                        dinheiro para comprar mais comida?</td>
                    <td><input type="radio" value="Sim" id="p21a" name="pergunta21" required></td>
                    <td><input type="radio" value="Não" id="p21b" name="pergunta21" required></td>
                    <td><input type="radio" value="Não sei" id="p21c" name="pergunta21" required></td>
                </tr>
                <!--Pergunta 22-->
                <tr>
                    <td>3. Nos últimos três meses, os moradores deste
                        domicílio ficaram sem dinheiro para ter uma
                        alimentação saudável e variada?
                    </td>
                    <td><input type="radio" value="Sim" id="p22a" name="pergunta22" required></td>
                    <td><input type="radio" value="Não" id="p22b" name="pergunta22" required></td>
                    <td><input type="radio" value="Não sei" id="p22c" name="pergunta22" required></td>
                </tr>
                <!--Pergunta 23-->
                <tr>
                    <td>4. Nos últimos três meses, os moradores deste
                        domicílio comeram apenas alguns poucos
                        tipos de alimentos que ainda tinham, porque o
                        dinheiro acabou?</td>
                    <td><input type="radio" value="Sim" id="p23a" name="pergunta23" required></td>
                    <td><input type="radio" value="Não" id="p23b" name="pergunta23" required></td>
                    <td><input type="radio" value="Não sei" id="p23c" name="pergunta23" required></td>
                </tr>
                <!--Pergunta 24-->
                <tr>
                    <td>5. Nos últimos três meses, algum/a morador/a de
                        18 anos ou mais de idade deixou de fazer
                        alguma refeição, porque não havia dinheiro para
                        comprar comida?</td>
                    <td><input type="radio" value="Sim" id="p24a" name="pergunta24" required></td>
                    <td><input type="radio" value="Não" id="p24b" name="pergunta24" required></td>
                    <td><input type="radio" value="Não sei" id="p24c" name="pergunta24" required></td>
                </tr>
                <!--Pergunta 25-->
                <tr>
                    <td>6. Nos últimos três meses, algum/a morador/a de 18
                        anos ou mais de idade, alguma vez, comeu
                        menos do que achou que devia, porque não
                        havia dinheiro para comprar comida?
                    </td>
                    <td><input type="radio" value="Sim" id="p25a" name="pergunta25" required></td>
                    <td><input type="radio" value="Não" id="p25b" name="pergunta25" required></td>
                    <td><input type="radio" value="Não sei" id="p25c" name="pergunta25" required></td>
                </tr>
                <!--Pergunta 26-->
                <tr>
                    <td>7. Nos últimos três meses, algum/a morador/a de 18
                        anos ou mais de idade, alguma vez, sentiu
                        fome, mas não comeu, porque não havia
                        dinheiro para comprar comida?</td>
                    <td><input type="radio" value="Sim" id="p26a" name="pergunta26" required></td>
                    <td><input type="radio" value="Não" id="p26b" name="pergunta26" required></td>
                    <td><input type="radio" value="Não sei" id="p26c" name="pergunta26" required></td>
                </tr>
                <!--Pergunta 27-->
                <tr>
                    <td>8. Nos últimos três meses, algum/a morador/a de 18
                        anos ou mais de idade, alguma vez, fez apenas
                        uma refeição ao dia ou ficou um dia inteiro
                        sem comer porque não havia dinheiro para
                        comprar comida?</td>
                    <td><input type="radio" value="Sim" id="p27a" name="pergunta27" required></td>
                    <td><input type="radio" value="Não" id="p27b" name="pergunta27" required></td>
                    <td><input type="radio" value="Não sei" id="p27c" name="pergunta27" required></td>
                </tr>

            </table>
        </div>
        <div>
            <button type="submit">Enviar</button>
        </div>
    </div>
</form>
    <script src="/javascript/questionario.js"></script>
    <footer>
        <p> &copy; 2025 Projetos IFBA</p>
    </footer>
</body>

</html>