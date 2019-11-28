<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="utf-8">
<?php

$user = "root";
$password = "";
$database = "universidade";
$hostname = "localhost";

mysql_connect($hostname,$user,$password) or die('Erro na conexão');

mysql_select_db($database) or die('Erro na seleção do banco');

$query = "SELECT * from login";
$result_query = mysql_query($query) or die('Erro na query' . $query. '' . mysql_error());
echo "<table border = '1px' style = '
	background-color = 'green'>";

echo "<tr>
	<td id='xd'>ID</td>
	<td id='xd'>Email</td>
	<td id='xd'>Nome</td>
	<td id='xd'>Sexo</td>
	<td id='xd'>Telefone</td>
	
	

</tr>";
while ($row = mysql_fetch_array($result_query)) {
echo "<tr>";
	echo "<td id = 'id_campo'>".$row['id']."</td>"."<td>".$row['email']."</td>"."<td>".$row['nome']."</td>"."<td>".$row['sexo']."</td>".
	"<td>".$row['telefone']."</td>";
}
echo"</tr>";
echo "</table>";

?>
