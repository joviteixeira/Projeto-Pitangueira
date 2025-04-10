const titulousuario = document.querySelector("#titulousuario");
const usuariocadastro = document.querySelector("#usuariocadastro");

usuariocadastro.addEventListener('submit', (event) =>{
    event.preventDefault();
    const senha = document.querySelector("#senhausuario");
    const repetirsenha = document.querySelector("#repetirsenhausuario");
    const msgerro = document.querySelector("#msgerrousuario");
    
    if (senha.value !== repetirsenha.value){
        msgerrousuario.style.display = 'block';
        repetirsenha.style.background = 'red';
        senha.style.background = 'red';
        return false;
    }else{
        msgerrousuario.style.display = 'none';
        repetirsenha.style.background = 'white';
        senha.style.background = 'white';        
        usuariocadastro.submit();
        return true;
    }
})