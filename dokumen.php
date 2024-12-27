<?php
session_start();
include "viewer.php";
include "include/connection.php";

print_header("dok");

?>
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_pendaftar.gif" align="absmiddle"> Katalog </font>		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink"></a>		</td>
	</tr>
</table>
<hr size="1" color="#87C6EC" width="95%">
<?php

$result = mysql_query("select * from tw_dokumen where Publish='1' order by ID") or die(mysql_error());
while($row=mysql_fetch_row($result)){
?>
<table width="95%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
                <td width="10" height="15"><img src="images/icon_bulet2.gif" align="absmiddle">
                </td>
                <td class="teksjudul">
                        <?php echo $row[1]?>
                </td>
        </tr>
  <tr>
                <td>
                </td>
                <td  class="tekshitam">
                        <?php echo $row[2]?>
                </td>
        </tr>
        <tr>
                <td>
                </td>

                <td  class="tekshitam">
					<!--
                        <?php echo $row[2]?>
						<br>
					-->
						<a href="<?php echo $row[3]?>" class="tekslink1" target="_blank">-> [Download]</a>
						<br>
                </td>
        </tr>
</table>
<?php
}
print_footer();
?>