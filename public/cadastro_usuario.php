<?php

include "conexao.php";
$mensagem = "";

if($_SERVER["REQUEST_METHOD"] == "POST"){

$email = $_POST["email"];

if(!$filter_var($email, FILTER_VALIDATE_EMAIL)){
    $mensagem = "Email inválido";


}else{
    $nome = mysqli_real_scape_string($conexao, $nome);

    $email = mysqli_real_scape_string($conexao, $email);

    $sql = "insert into usuarios(nome, email)
    values('nome', 'email')";

    if(mysqli_query($conexao,$sql)){
        $mensagem ="Cadastro concluído"
    }else{

    $mensagem="Erro ao cadastrar usuario"

    }

    }
}
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

 <link rel="stulesheet" href="style/style.css">

</head>
<body>
    <header>
    <h1>Cadastro de Usuário</h1>

    <mav>
        <a hred="index.php"> Gerenciamento de tarefas </a>
        <a hred="cadastro_usuario.php"> Cadastro de Usuarios </a>
        <a hred="cadastro_tarefa.php"> Gerenciamento de tarefas </a>
    </header>
</body>
</html>