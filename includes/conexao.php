<?php

$conexao = mysqli_connect(
    "localhost",
    "root",
    "root",
    "kanban_db_rafael2",
    6606
);

if(!$conexao){
    die("Falha na conexao com o bd")
}

mysqli_set_charset($conexao, "utf8mb4");
?>