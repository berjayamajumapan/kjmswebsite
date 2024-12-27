<?php
session_start();
include "viewer.php";
include "include/connection.php";

print_header("aboutgallery");

?>
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_siswa.gif" align="absmiddle"> Gallery Perusahaan</font>
		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink">
		<?php
			$result=mysql_query("select count(ID) from tr_keranjang where ID='".$_SESSION['id']."' and status='0' ");
			$row=mysql_fetch_row($result);
			echo $row[0];
		?>
			mobil pada reservasi Anda <img src="images/icon_keranjang.gif" align="absmiddle" border="0"></a>
		</td>
	</tr>
</table>
<hr size="1" color="#87C6EC" width="95%">
<?php
$result = mysql_query("select * from tw_gallery where Publish='1'") or die(mysql_error());

while($row=mysql_fetch_row($result)){
?>
<table width="95%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
                <td width="10" height="20"><img src="images/icon_bulet2.gif" align="absmiddle">
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
</table>
<?php
}
print_footer();
?>