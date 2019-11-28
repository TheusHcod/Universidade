<meta charset="utf-8">

<?php 

@$id_aluno = $_POST['id_aluno'];
@$n1 = $_POST['nota1'];
@$n2 = $_POST['nota2'];
@$n3 = $_POST['nota3'];

/*
 && ||
 AND OR 
*/

 


$connect = mysql_connect('localhost','root','');
$db = mysql_select_db('universidade',$connect);

$query_select = "SELECT * FROM notas WHERE  id_aluno = '$id_aluno'";
$select = mysql_query($query_select,$connect);
$array = mysql_fetch_array($select);
$logarray = $array['id_aluno'];
@$id_aluno = $_POST['id_aluno'];
	
	
	if ($id_aluno == 0) {
 	echo"<script language='javascript' type='text/javascript'>alert('Selecione um Aluno!');window.location.href='cad.php'</script>";
 }else{

  $query = "INSERT INTO notas (id_nota,nota1,nota2,nota3,id_aluno) VALUES ('','$n1','$n2','$n3','$id_aluno')";
  $insert = mysql_query($query,$connect);
  
  if($insert){
    echo"<script language='javascript' type='text/javascript'>alert('Usuário cadastrado com sucesso!');window.location.href='cad.php'</script>";
  

        
  }
}
?>