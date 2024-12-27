<?php
session_start();
include "viewer.php";
include "include/connection.php";

print_header();

?>
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> Detail Product </font>		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink"></a>		</td>
	</tr>
</table>
						 <table width="99%">
							<?php
							$result = mysql_query("select * from tr_buku 
												   left join tr_kategori_spesifikasi on tr_buku.IDKategoriSpesifikasi=tr_kategori_spesifikasi.IDKategoriSpesifikasi
												   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
												   left join tr_kategori_buku on tr_buku.IDKategoriBuku=tr_kategori_buku.IDKategoriBuku
												   left join tr_penerbit on tr_buku.IDPenerbit=tr_penerbit.IDPenerbit
												   left join tr_kategori_bahasa on tr_buku.IDKategoriBahasa=tr_kategori_bahasa.IDKategoriBahasa
												   left join tr_format on tr_buku.IDFormat=tr_format.IDFormat
												   where Publish='1' and IDBuku='".$_GET['ID']."'") or die(mysql_error());
							?>
							<tr height="160">
								<?php
								$row=mysql_fetch_row($result);
								?>
								<td class="" colspan="2">
									<table cellspacing="1" bgcolor="#87C6EC" width="97%" height="100%" align="center">
										<tr>
											<td bgcolor="#FFFFFF" valign="top">
												<table width="95%" height="100%" cellpadding="2" align="center" class="tekshitam">
													<tr><td>&nbsp;</td></tr>
													<tr>
														<td width="40%" valign="top" rowspan="11">
															<img src="<?php echo $row[16]?>" class="shadow1">														</td>
														<td valign="top" class="teksmerah">
															<font size="4"><b><?php echo $row[1]?></b></font></div>														</td>
													</tr>
													<tr>
														<td class="teksjudul_1">
															Item Specifics	:</td>
													</tr>
													<tr>
														<td class="teksjudul_1">
														Details Product&nbsp;: <font color="#FF6633"><?php echo $row[24]?></font> , 
														<br> &raquo; <a href="detail_pengarang.php?ID=<?php echo $row[23]?>"<br>
														<font size="4">====>>> Lihat Detail Product <<<====</a><br>	
														</font>													</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td class="teksjudul_1">&nbsp;</td>
													</tr>
													<tr>
														<td colspan="2" class="teksjudul">
															<br>
															Detail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	:														</td>
													</tr>
													<tr>
													  <td colspan="2" class="tekshitamkecil">
															<?php echo $row[12]?><br><br></td>
													</tr> 
													<tr>
														<td colspan="2" class="teksjudul" align="right">
															<a href="keranjang.php?ID=<?php echo $row[0]?>"class="tekslink"></a>														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="left">
									&nbsp;&nbsp;<a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>
								</td>
							</tr>

						</table>
						


<?php
print_footer();
?>