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
		<td colspan="2" class="teksjudul">
		<div align="center">
		<font color="#FF0000" size="4">
		No.Order : <?php echo $noorder?><br>
		</font>
		</div>
		<div align="center"><br>
		Silahkan catat nomor order anda 
		<br>reservasi Anda akan segera kami proses 
		<br>Silahkan tunggu konfirmasi dari kami melalui 
		<br><font color="#0000FF" size="2"><blink>Via telepon atau via email.</blink></font></br>
		<br><img src="images/20153.gif"></br>Kenyamanan perjalanan anda merupakan tanggung jawab kami
		<p><font color="#9932CC" size="2">Terima kasih telah melakukan reservasi bersama
                <p><font color="#9932CC" size="2">=0=>> WANGSA TUNGGAL RENT CAR <<=0=</br></br></font></td>		
	</tr>
</table>
<?php
print_footer();
?>