<?php
include "viewer.php";
include "include/connection.php";

print_header();

$result = mysql_query("select * from t_faq where Publish='1'") or die(mysql_error());
while($row=mysql_fetch_row($result)){
?>
<table width="486" border="0" align="center" bgcolor="#F6F6F6" cellpadding="0" cellspacing="0">
	<tr>
		<td class="judulartikel">
			&nbsp;<?php echo $row[1]?>
		</td>
	</tr>
	<tr>
		<td  class="atikel">
			<?php echo $row[2]?>
		</td>
	</tr>
</table>
<br>
<table width="486" height="1" cellpadding="0" cellspacing="0" align="center">
	<td background="images/g_putus.gif" width="185" height="1">
	</td>
</table>
<br>
<?php
}
	
?>
</table>
<?php
print_footer();
?>