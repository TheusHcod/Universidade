<?php
session_start(); // Inicia a sessão
$error = ''; // Variavel para retornar um erro
if (isset($_POST['submit'])) {
if (empty($_POST['email']) || empty($_POST['password'])) {
$error = "Email ou senha invalido!";
}
else{
// Define $email e $password
$email = $_POST['email'];
$password = $_POST['password'];


// mysqli_connect() Abre uma conexão com o servidor do MYSQL.
@$conn = mysqli_connect("localhost", "root", "", "universidade");

// Consulta SQL para buscar informações de usuários registrados .
$query = "SELECT email, password from login where email=? AND password=? LIMIT 1";

// 
$stmt = $conn->prepare($query); //Prepara a requisição
$stmt->bind_param("ss", $email, $password);//verifica a senha e e-mail
$stmt->execute(); //Executa a Ação
$stmt->bind_result($email, $password);
$stmt->store_result();
if($stmt->fetch()) //Busca o conteudo da linha {
$_SESSION['login_user'] = $email;
$_SESSION['login_user1'] = $nome_disciplina; // Inicia a sessão
header("location: profile.php"); // Redireciona para a pagina do perfil
}
mysqli_close(@$conn); // Fecha a conexão
}
?>