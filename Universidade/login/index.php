<?php
include('login.php'); // Inclui o script de login

if(isset($_SESSION['login_user'])){
header("location: profile.php"); // Redireciona a pagina do perfil
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Login Form com sessão</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body> 

<div id="login">
	<img src="logo.png" name="usuario" class="usuario" id="usuario" width="100" height="100" alt="">

<h1>Login</h1>

<form action="" method="post">

<p>Email :</p>
<input id="name" name="email" placeholder="E-mail" type="text">

<p>Password :</p>
<input id="password" name="password" placeholder="**********" type="password"><br><br>
<input name="submit" type="submit" value=" Login " id="botao">

<span><?php echo $error; ?></span>

</form>
</div>
</body>
</html>