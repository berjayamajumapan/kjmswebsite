<?php
session_start();
include "viewer.php";
include "include/connection.php";

print_header("login");

?>
<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: small;
}
.style2 {color: #0033CC}
.style3 {color: #FF6600}
.style4 {color: #006600}
-->
</style>

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
			product pada reservasi Anda <img src="images/icon_keranjang.gif" align="absmiddle" border="0"></a>
		</td>
	</tr>
</table>
<hr size="1" color="#87C6EC" width="95%">
						<table width="95%" align="center">
								<tr>
								<td class="teksjudul" width="50%">
									Pelanggan Baru
								</td>
								<td class="teksjudul" align="left">
									Pelanggan Lama
								</td>
							</tr>
							<tr height="120">
								<td class="" valign="top" width="100%" colspan="2">
									<table cellspacing="1" bgcolor="#FF9966" width="100%" height="100%">
										<tr>
											<td bgcolor="#ffffff" valign="top" width="50%">
												<table width="100%" height="100%" cellpadding="5">
													<tr>
														<td valign="top" class="tekshitamkecil">														
															Untuk pelanggan yang belum terdaftar pada <span class="style1"><span class="style4">samudramaskalimantan</span><span class="style4"></span>.<span class="style4">com</span></span>, silahkan lakukan registrasi 
															Online untuk melakukan reservasi selanjutnya.
															<br>
															<br>
													  Klik tombol "Sign Up" untuk melakukan registrasi online!													</tr>
													<tr>
														<td valign="bottom" align="right">
															<a href="sign_up.php"><img  src="images/button_signup.gif" border="0"></a>
														</td>
													</tr>
												</table>
											</td>
											<td bgcolor="#ffffff" height="100%">
												<table width="100%" cellpadding="5">
													<form action="confirm_login.php" method="post">
													<tr>
														<td width="10%" valign="top" colspan="2" class="tekshitamkecil">
															Silahkan login untuk reservasi selanjutnya
														</td>
													</tr>
													<tr>
														<td width="10%" valign="top" align="right" class="tekshitamkecil">
															Email :
														</td>
														<td>
															<input type="text" name="id" class="tekshitamkecil">
														</td>
													</tr>
													<tr>
														<td width="10%" valign="top" align="right" class="tekshitamkecil">
															Password :
														</td>
														<td>
															<input type="password" name="pass" class="tekshitamkecil">
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<a href="password_forgotten.php" class="tekslink">Lupa password? Klik disini!</a>
														</td>
													</tr>
													<tr>
														<td colspan="2" align="right" valign="bottom">
															<input type="image" name="login" src="images/button_login.gif" value=" GO ! ">
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