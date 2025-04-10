<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projetos IFBA Login</title>
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="/jte/home.jte">Página Inicial</a></li>
                <li class="btncadastrar"><a href="/jte/cadastro.jte">Cadastro</a></li>
            </ul>
        </nav>
    </header>
   
    <h1 class="titulo">Bem-vindo(a)!</h1>

    <form action="" method="post">
        <h1>Login!</h1>
        <label for="emailusuario">E-mail</label>
        <input type="email" name="emailusuario" id="emailusuario" placeholder="Digite o seu E-mail" required> 
        <label for="senhausuario">Senha</label>
        <input type="password" name="senhausuario" id="senhausuario" placeholder="Digite a sua Senha" required>
        <input type="submit" value="Entrar">
        <div class="esqueceu-senha">
            <a href="">Esqueci a minha senha!</a>
        </div>
    </form>


    <footer>
        <p> &copy; 2025 Projetos IFBA</p>
    </footer>
</body>
</html>