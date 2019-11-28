<meta charset="utf-8">
<?php

include('../login/session.php');


// Redireciona para a pagina principal caso a sessão nao existir
if(!isset($_SESSION['login_user'])){
header("location: ../login/index.php"); // Redireciona para a pagina principal caso a sessão nao existir
}
?>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../login/css.css">
<!-- <style>
    #b{
      width: 114px;  
    }
</style>
 -->
<title> Cadastro de Usuário </title>
</head>
<body>

  <header>
    <div class="main" id="main">
      <div class="logo">
        <img src="../login/logo.png">
      </div>
      <ul>
       <!--  <li><a href="#">Home</a></li> -->
        <li><a href="..\login\profile.php">Andamento Geral</a></li>
        <li class="primeiro"><a href="..\crud\cad.php">Cadastrar notas</a></li>
        <li><a href="..\login\logout.php">Sair</a></li>
      </ul>
    </div>
  </header>

<table border=1px id="tabela">


<form method="POST" action="cadnotas.php">
  <div id="caixa">
      <p id='titulo'>Cadastrar Notas</p>

<tr>
<label><td id="a" > Nota 1</td>:</label><td><input type="text" name="nota1" id="nome1"></td><br>
</tr>

<tr>
<label><td id="a"> Nota 2</td>:</label><td><input type="text" name="nota2" id="nome"></td><br>
</tr>

<tr>

<label><td id="a"> Nota 3</td>:</label><td><input type="text" name="nota3" id="nome"></td><br>

</tr>

<tr>
<?php
	@$id_aluno = $_POST['id_aluno'];
	$connect = mysql_connect('localhost','root','');
    $db = mysql_select_db('universidade',$connect);
	$query_select_aluno = "SELECT a.nome, a.id_aluno, t.nome_turma 
  FROM aluno as a, turma as t 
  where a.id_turma = t.id_turma ORDER BY a.id_aluno";
        $aluno =  mysql_query($query_select_aluno,$connect) or die(mysql_error());
       	echo "<div id='centro'><select name='id_aluno' id='texto'>";  
        echo "<option value='0' select disabled selected >Selecionar Aluno</option>";
          
        while($linha = mysql_fetch_array($aluno)) {
          echo utf8_encode( "<option value='".$linha['id_aluno']."'>".$linha['id_aluno'] ." - " .$linha['nome']. 
          " - " . $linha['nome_turma'].
          	"</option>");
        }
?>
</tr>

<tr>
<td>
<input type="submit" value="Cadastrar Notas" id="cadastrar" name="cadastrar">
</td>
</tr>
</div>
</select>
</form>
</table>
</body>
</html>

