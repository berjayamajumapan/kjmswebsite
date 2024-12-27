<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/query_function.php";

$error="";

if(isset($_POST['email'])){
	$result=mysql_query("select Email, Password from tr_anggota where Email = '".$_POST['email']."'");
	$row=mysql_fetch_row($result);
	if($row[0]==$_POST['email']){
		@mail($row[0],"Konfirmasi Password! (PK-Star.Com)","Password anda : ".$row[1]);
		header("Location:confirm_true1.php?email=".$row[0]);		
	}
	else{
		$error="Maaf, alamat email tidak ada dalam daftar anggota! Silahkan cek kembali!";
	}
}

print_header();

?>
						<!--BEGIN : ISI TENGAH-->
						<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_alur.gif" align="absmiddle"> Login User</font>
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

						<table width="99%" align="center">
							<tr>
								<td class="teksmerah" width="100%" valign="top" align="center">
									<h2>Lupa Password Anda?</h2>
									<br>
									<font color="#FF0000"><?php echo $error?></font>
									<br>
									<table cellspacing="1" bgcolor="#FF9966" width="100%" height="100%" align="center">
										<tr>
											<td bgcolor="#ffffff" valign="top" width="100%">
												<table width="100%" cellpadding="5">
													<form action="" method="post">
													<tr>
														<td width="37%" valign="top" align="left" class="tekshitam" colspan="2">
														 Jika anda lupa password anda, silahkan masukan alamat e-mail anda dibawah, dan kami 
														 akan mengirimkan anda e-mail yang berisi password anda.
														</td>
													</tr>
													<tr>
														<td align="center">
															<b>Alamat E-mail :</b>
															<input type="text" name="email" class="tekshitamkecil" size="35">
														</td>
													</tr>
													<tr>
														<td align="right">
															<input type="image" name="kirim" class="tekshitamkecil" value=" GO ! " src="images/button_continue.gif">
														</td>
													</tr>
													</form>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>

<?php
print_footer();
?>