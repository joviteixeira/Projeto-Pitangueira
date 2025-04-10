<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projetos IFBA Cadastro</title>
    <link rel="stylesheet" href="/css/cadastro.css">
</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="/jte/home.jte">Página Inicial</a></li>
                <li class="btnlogin"><a href="/jte/loginUsuario.jte">Login</a></li>
            </ul>
        </nav>
    </header>

    <form action="" id="usuariocadastro" method="post">
        <h1>Cadastro de Usuário!</h1>
        <p id="msgerrousuario">AS SENHAS NÃO SÃO IGUAIS!</p>
        <label for="emailusuario">E-mail</label>
        <input type="email" name="emailusuario" id="emailusuario" placeholder="Digite o seu e-mail">
        <label for="nomeusuario">Nome</label>
        <input type="text" name="nomeusuario" id="nomeusuario">
        <label for="cpfusuario">CPF</label>
        <input type="text" name="cpfusuario" id="cpfusuario">

        <label for="senhausuario">Senha</label>
        <input type="password" name="senhausuario" id="senhausuario">
        <label for="repetirsenhausuario">Repita a sua senha</label>
        <input type="password" name="repetirsenhausuario" id="repetirsenhausuario">
        <input type="submit" value="Enviar">
    </form>

    <script src="/javascript/cadastro.js"></script>
    <footer>
        <p> &copy; 2025 Projetos IFBA</p>
    </footer>
</body>

</html>