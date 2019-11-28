<meta charset="utf-8">
<?php
include('session.php');


// Redireciona para a pagina principal caso a sessão nao existir
if(!isset($_SESSION['login_user'])){
header("location: index.php"); // Redireciona para a pagina principal caso a sessão nao existir
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Universidade</title>
<link href="css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="tabela.css">

</head>
<body>

  <header>
    <div class="main" id="main">
      <div class="logo">
        <img src="logo.png">
      </div>
      <ul>
       <!--  <li><a href="#">Home</a></li> -->
        <li class="primeiro"><a href="..\login\profile.php">Andamento Geral</a></li>
        <li><a href="..\crud\cad.php">Cadastrar notas</a></li>
        <li><a href="..\login\logout.php">Sair</a></li>
      </ul>
    </div>
  </header>

  <?php
  // echo $login_session;
?>

</body>
<br><br>

<?php

$connect = mysql_connect('localhost','root','');
$db = mysql_select_db('universidade',$connect);

?>

   <p id='titulo'>Andamento Geral da Turma</p>
    <form action="profile.php" method = "post">
    <?php
    $connect = mysql_connect('localhost','root','');
    $db = mysql_select_db('universidade',$connect);
    
    
    $query_select_turma = "SELECT id_turma,nome_turma FROM turma";
        $turma =  mysql_query($query_select_turma,$connect) or die(mysql_error());
        echo "<div id='subtitulo'><select name='id_turma'id='tam'>";
          echo "<option value='0'  select disabled selected>Selecionar Turma</option>";
        while($linha = mysql_fetch_array($turma)) {
          echo utf8_encode( "<option value='".$linha['id_turma']."'>".$linha['nome_turma']."</option>");
        }
        echo "</select>";
    ?>
    <input type="submit" value="Procurar"></div><br>
    </form>

</html>
<?php

$connect = mysql_connect('localhost','root','');
$db = mysql_select_db('universidade',$connect);

@$turma = $_POST['id_turma'];

      
if ($turma == NULL) {
  
}else{
//   SELECT AVG(n.media), t.nome_turma, t.media_turma
// FROM aluno as a INNER JOIN notas as n on a.id_aluno = n.id_aluno 
// INNER JOIN turma as t on a.id_turma  = 1 where t.id_turma = 1

$query_select = "SELECT a.nome, n.nota1, n.nota2, n.nota3,n.media,t.nome_turma, t.media_turma
FROM aluno as a INNER JOIN notas as n on a.id_aluno = n.id_aluno 
INNER JOIN turma as t on a.id_turma  = $turma where t.id_turma = $turma ORDER BY a.nome asc" ;

// $query_media = "SELECT  * from notas";  
// $query1 =  mysql_query($query_media,$connect) or die(mysql_error());


$query_select_turma1 = "SELECT * from turma where id_turma = $turma" ;
        $turma2 =  mysql_query($query_select_turma1,$connect) or die(mysql_error());

        
        while($linha = mysql_fetch_array($turma2)) {
             echo utf8_encode( "<div id='subtitulo'>".$linha['nome_turma']."</div>");
        }
        $queryMedia = "SELECT  AVG(media) as media_turma, t.nome_turma
  FROM aluno as a INNER JOIN notas as n on a.id_aluno = n.id_aluno 
  INNER JOIN turma as t on a.id_turma  = $turma where t.id_turma = $turma";
  $insert1 = mysql_query($queryMedia,$connect) or die(mysql_error());

  while($linha = mysql_fetch_array($insert1)) {
    echo utf8_encode("<div id='subtitulo'>Media da Turma : ".$linha['media_turma']."</div>");
          
          
        }

        $queryMediaT = "SELECT AVG(media) as media_turmaG, t.nome_turma FROM aluno as a 
        INNER JOIN notas as n on a.id_aluno = n.id_aluno INNER JOIN turma as t on a.id_turma >=1";
        
  $insert2= mysql_query($queryMediaT,$connect);
  echo "<br>";

  while($linha = mysql_fetch_array($insert2)) {
    echo utf8_encode("<div id='subtitulo'>Media Geral : ".$linha['media_turmaG']."</div>");
          
          
        }

$query_media = "SELECT  * from notas";  
$query1 =  mysql_query($query_media,$connect) or die(mysql_error());

@$query = mysql_query($query_select,$connect) or die(mysql_error());
  echo "<div id='profile'><table border class='content-table'>";
  echo "
    <thead>
    <tr>
      <th id='nome'><b>Nome</b></th>
      <th id='n1'><b>Nota 1</b></th>
      <th id='n2'><b>Nota 2</b></th>
      <th id='n3'><b>Nota 3</b></th>
      <th id='turma'><b>Turma</b></th>
      <th><b>Média</b></th>
      </thead>
    </tr>";
  

  while($linha = mysql_fetch_array($query)) {
    echo utf8_encode(
          "<tbody><tr class='active-row'><td>".$linha['nome']."</td> "."<td id='n1'>".$linha['nota1']."</td> "."<td id='n2'>".$linha['nota2']."</td>"."<td id='n3'>".$linha['nota3']."</td>"
          ."<td id='turma'>".$linha['nome_turma']."</td>"."<td id='media'>".$linha['media']."</td>");
          
        }
  
 
  echo "</tr></tbody></table></table></div>";
}

$connect = mysql_connect('localhost','root','');
$db = mysql_select_db('universidade',$connect);

  $queryM = "UPDATE notas SET media = (nota1+nota2+nota3)/3";
  $insert = mysql_query($queryM,$connect);

  

  ?>


