<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$noorder = $_GET['noorder'];

print_header("");

?>
<style type="text/css">
<!--
.style1 {color: #000000}
-->
</style>

<br>
<table width="90%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> Nilai Tambah Perusahaan</font>		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink">
		
		
		</td>
	</tr>
		<tr>
		<td colspan="2" class="teksjudul">
		<div align="justify">
		<font color="#0000FF" size="2">
		<div align="justify">

<br>
<p>
  <ol>
  Nilai Tambah Yang Kami Miliki adalah :
  <ul>
    <li class="style1">Jumlah armada yang banyak</li>
    <li class="style1">Berbagai macam merk sehingga menawarkan banyak pilihan</li>
    <li class="style1">Tim sales yang sudah berpengalaman</li>
    <li class="style1"> didukung dengan perusahaan distributor dan modern market</li>
    <li class="style1"> akses yang mudah untuk pengambilan barang digudang</li>
    <li class="style1">Fasilitas member card untuk project</li>
  </ul>
  . </br>
</p>
</tr>
<p> </p>

<tr>
	<td colspan="2" align="center">
	&nbsp;&nbsp;<a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>
	</td>
</tr>
</table>

<?php
print_footer();
?>