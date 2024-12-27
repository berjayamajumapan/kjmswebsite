<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$noorder = $_GET['noorder'];

print_header("");

?>
<br>
<table width="90%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> Struktur Organisasi Perusahaan</font>
		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink">
		
		
		</td>
	</tr>
		<tr>
		<td colspan="2" class="teksjudul">
		<div align="justify">
		<font color="#0000FF" size="2">
		<div align="justify">

<br>Struktur organisasi yang digunakan Rental mobil Wangsa Tunggal adalah struktur organisasi garis
yaitu pembagian kerja yang terbagi dalam tiap-tiap bagian, dimana masing-masing bagian
bertanggung jawab terhadap kemajuan dan kemunduran bidangnya kepada pemimpin perusahaan.
Namun seiring dengan berkembangnya kegiatan perusahaan, maka struktur organisasi perusahaan
disesuaikan dengan situasi dan kondisi perusahaan. </br><br>

</tr>
<tr>
	<td colspan="2" align="center">
	&nbsp;&nbsp;<a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>
	</td>
</tr>
</table>

<?php
print_footer();
?>