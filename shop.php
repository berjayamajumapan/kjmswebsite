<?php
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$result = mysql_query("select * from t_shop where Publish='1' order by IDItem") or die(mysql_error());

print_header("");
?>
<table width="90%" align="center">
<?php
$i = 0;
while($row=mysql_fetch_row($result)){
	$i++;
?>
	<tr>
		<td colspan="2">
			<?php echo $row[1]?>
		</td>
	</tr>
	<tr>
		<td valign="top">
			<img src="<?php echo $row[3]?>">
		</td>
		<td valign="top">
			<?php echo $row[2]?>
			<br>
			<br>
			<a href="order_form.php?iditem=<?php echo $row[0]?>">Beli</a>
		</td>
	</tr>
<?php
}
if($i==0){
?>
	<tr>
		<td align="center">
			<font face="Verdana" color="#FF0000" size="+1"><b>Comming soon</b></font>
		</td>
	</tr>
<?php
}
?>
</table>
<?php
print_footer();
?>
