<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$no = $_GET['no'];

print_header("");

?>
<frameset row=20%,*>
	<frameset cols=35%,*>
	<frame name=distributor src=distrijatim.php>
	</frameset>
</frameset>
 
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_siswa.gif" align="absmiddle" border="0"> Kontraktor Yang Menjadi Customer Tetap Kami : </font>
		<hr size="1" color="#87C6EC" width="95%">
		</td>
		<td align="right">
		</tr>
</table>
<!--
<table width="90%" align="center">
	<tr>
		<td colspan="2" class="teksjudul">
		<div align="center">
		<br><font color="#0000FF" size="2"><blink>KANTOR PUSAT : Karangjoang, Balikpapan, Kaltim</blink></font></br>
		<br><font color="#0000FF" size="2"><blink>Telp. 0878 1207 4802 / 0812 5473 5085 </blink></font></br>
		<br><font color="#0000FF" size="2"><blink>E-mail: dedipurwanto@gmail.com</blink></font></br>
	</tr></td>
</table>	
	--!>							<br><table width="90%" align="center">
							<?php
							$result = mysql_query("select * from t_jatim ORDER by ID") or die(mysql_error());
							?>
							
								<?php
								$row=mysql_fetch_row($result);
								?>
								<td class="" colspan="10">
									<table  bgcolor="#333333" cellspacing="1" border="0" width="550">
							<tr class="teksmerah" align="center" bgcolor="#FF9966">
								<td>
									No
								</td>
								<td>
									Wilayah
								</td>
								<td>
									Alamat
								</td>
								<td>
									No. Telp
								</td>
								
							</tr>
							<form width="80%" align="absmiddle" action="" method="post" enctype="multipart/form-data" >
							<?php
							while($row=mysql_fetch_row($result)){
							?>
							<tr bgcolor="#FDFDFD" class="tekshitam" valign="top">
								<td>
									<?php echo $row[0]?>		
								</td>
								<td>
									<?php echo $row[1]?>
								</td>
								<td>
									<?php echo $row[2]?>
								
								</td>
								<td>
									<?php echo $row[3]?>
								
								</td>
								
								
							</tr>
							<?php
							}
							?>
							<tr bgcolor="#FDFDFD" class="tekshitam">
								<td>
								</td>
								<td>
								</td>
								<td>
								</td>
								<td>
								</td>
								
								
								
							</tr>
							</form>

				
			</table>
							<p>

							<tr>
								<td colspan="2" align="absmiddle">
									&nbsp;&nbsp;<a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>
								</td>
							</tr></p>

						</table>	

<?php
print_footer();
?>