<?php
// incluir o arquivo de conexao com o banco de dados
require_once("database.php");

// verificar se é uma edicao

$edicao = false;
$tarefa = null;

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $tarefa = obterTarefa($id);
    if($tarefa){
        $edicao = true;
    }
}

// verificar se o formulário foi enviado
$mensagem = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id)usuario = $_POST['usuario'] ?? '';
    $descricao = $_POST['descricao'] ?? '';
    $setor = $_POST['setor'] ?? '';
    $prioridade = $_POST['prioridade'] ?? '';

    //validar campos
    if (empty($usuario) || empty($descricao) || empty($setor) || empty($prioridade)) {
        $mensagem = "Todos os campos são obrigatórios.";
        }else{
    //
            if($edicao){
                
            }
        }