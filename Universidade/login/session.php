<?php

// mysqli_connect() Abre uma conexão com o servidor do MYSQL.
$conn = mysqli_connect("localhost", "root", "", "universidade");
session_start();// Inicia a sessão

// Armazena a sessão
$user_check = $_SESSION['login_user'];

// Faz a busca de informações do usuario no banco
$query = "SELECT * from login where email = '$user_check'";
$ses_sql = mysqli_query($conn, $query);
$row = mysqli_fetch_assoc($ses_sql);
$login_session = $row['nome'];


?>


