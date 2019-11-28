<?php 

$email = $_POST['email'];
$senha = $_POST['password'];
$nome = $_POST['nome'];



$connect = mysql_connect('localhost','root','');
$db = mysql_select_db('universidade',$connect);

$query_select = "SELECT email FROM login WHERE  email= '$email'";
$select = mysql_query($query_select,$connect);
$array = mysql_fetch_array($select);
$logarray = $array['email'];

  if($email == "" || $email == null){
    echo"<script language='javascript' type='text/javascript'>alert('O campo email deve ser preenchido');window.location.href='cadastro.php';</script>";

    }else{
      if($logarray == $email){

        echo"<script language='javascript' type='text/javascript'>alert('Esse email já existe');window.location.href='cadastro.php';</script>";
        die();

      }else{
        $query = "INSERT INTO login (id,email,password,nome,sexo,telefone) VALUES ('','$email','$senha','$nome','$sexo','$telefone')";
        $insert = mysql_query($query,$connect);
        
        if($insert){
          echo"<script language='javascript' type='text/javascript'>alert('Usuário cadastrado com sucesso!');window.location.href='cadastro.php'</script>";
        }else{
          echo"<script language='javascript' type='text/javascript'>alert('Não foi possível cadastrar esse usuário');window.location.href='cadastro.php'</script>";
        }
      }
    }
?>