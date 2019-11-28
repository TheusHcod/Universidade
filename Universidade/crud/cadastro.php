<!DOCTYPE HTML>
<html>
<head>
  <title>Register Form</title>
</head>
<body>
 <form action="cadastrar.php" method="POST">
  <table>
  Email:<input type="text" name="email" id="nome"><br><br>
  Senha:<input type="password" name="password" id="matricula"><br>


   <tr>
    <td>Nome:</td>
    <td><input type="text" name="nome" required></td>
   </tr>
   <tr>
    <td>Sexo :</td>
    <td>
     <input type="radio" name="sexo" value="Masculino" required>Masculino
     <input type="radio" name="sexo" value="Feminino" required>Feminino
    </td>
   </tr>
    <td>Telefone :</td>
    <td>
     
     <input type="phone" name="telefone" required>
    </td>
   </tr>
   <tr>
    <td><input type="submit" value="Submit"></td>
   </tr>
  </table>
 </form>
</body>
</html>
