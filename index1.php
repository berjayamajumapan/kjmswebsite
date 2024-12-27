<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/query_function.php";

print_header();

?>
						<!--BEGIN : ISI TENGAH-->
						<table width="99%" align="center">
							<tr>
								<td class="teksjudul" height="40">
									<img src="images/icon_bintang.gif" align="absmiddle"> Featured Books
								</td>
								<td align="right">
								<a href="keranjang.php"  class="tekslink">
								<?php
									$result=mysql_query("select count(ID) from tr_keranjang where ID='".$_SESSION['id']."' and status='0' ");
									$row=mysql_fetch_row($result);
									echo $row[0];
								?>
									Buku Dalam Keranjang Anda <img src="images/icon_keranjang.gif" align="absmiddle" border="0"></a>
								</td>
							</tr>
							<tr>
								<td colspan="2"><hr color="#A50021" size="3"></td>
							</tr>
							<tr>
								<td class="teksjudul_ijo" height="40">
									New Arrivals
									<?php
									$result = mysql_query("select * from tr_buku 
														   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
														   where New='1' and Publish='1' order by IDBuku asc limit 0, 2") or die(mysql_error());
									?>
								</td>
								<td align="right" class="tekslink">
								</td>
							</tr>
							<tr height="160">
								<?php
								while($row=mysql_fetch_row($result)){
								?>
								<td class="" width="50%">
									<table cellspacing="2" bgcolor="#DEDEDE" width="100%" height="100%">
										<tr>
											<td bgcolor="#FFFFFF" valign="top">
												<table width="100%" height="100%" cellpadding="5">
													<tr>
														<td width="10%" valign="top">
															<img src=""http://localhost/websiteku/bookimages/iconBhsIngGsl4.jpg"<?php echo $row[15]?>">
														</td>
														<td valign="top">
															<div class="teksjudul"><?php echo $row[1]?></div>
															<div class="tekshitamkecil">by <?php echo $row[21]?> (<?php echo $row[11]?>)</div>
															<br>
															<div class="teksorange">Harga : Rp <?php echo $row[14]?>,- </div>
															<div><a href="product_detail.php?ID=<?php echo $row[0]?>" class="teksjudul">Detail</a></div>
															<br>
															<div class="teksmerahkecil"><a href="keranjang.php?ID=<?php echo $row[0]?>&session=" class="teksmerahkecil">Tambah Ke Keranjang</a> <img src="images/icon_keranjang.gif" align="absmiddle"></div>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
								<?php
								}
								?>
							</tr>
							<tr>
								<td colspan="2" align="right">
									<a href="product_list.php?kat=new" class="teksjudul_1"><i>Halaman Selengkapnya</i></a>
								</td>
							</tr>


							<tr>
								<td class="teksjudul_ijo" height="40">
									Cools Books
									<?php
									$result = mysql_query("select * from tr_buku 
														   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
														   where Cool='1'  and Publish='1' order by IDBuku asc limit 0, 2") or die(mysql_error());
									?>
								</td>
								<td align="right" class="tekslink">
								</td>
							</tr>
							<tr height="160">
								<?php
								while($row=mysql_fetch_row($result)){
								?>
								<td>
									<table cellspacing="2" bgcolor="#DEDEDE" width="100%" height="100%">
										<tr>
											<td bgcolor="#FFFFFF" valign="top">
												<table width="100%" height="100%" cellpadding="5">
													<tr>
														<td width="10%" valign="top">
															<img src="http://localhost/websiteku/bookimages/iconBhsIngGsl4.jpg"<?php echo $row[15]?>">
														</td>
														<td valign="top">
															<div class="teksjudul"><?php echo $row[1]?></div>
															<div class="tekshitamkecil">by <?php echo $row[21]?> (<?php echo $row[11]?>)</div>
															<br>
															<div class="teksorange">Harga : Rp <?php echo $row[14]?>,- </div>
															<div><a href="product_detail.php?ID=<?php echo $row[0]?>" class="teksjudul">Detail</a></div>
															<br>
															<div class="teksmerahkecil"><a href="keranjang.php?ID=<?php echo $row[0]?>&session=" class="teksmerahkecil">Tambah Ke Keranjang</a> <img src="images/icon_keranjang.gif" align="absmiddle"></div>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
								<?php
								}
								?>
							</tr>
							<tr>
								<td colspan="2" align="right">
									<a href="product_list.php?kat=cool" class="teksjudul_1"><i>Halaman Selengkapnya</i></a>
								</td>
							</tr>
						</table>
						
						<?php
						if(!isset($_SESSION['id'])){
						?>
						
						<table width="99%" align="center">
							<tr height="120">
								<td class="" width="35%" valign="top">
								<br>
									<table cellspacing="2" bgcolor="#660033" width="100%" height="100%">
										<tr>
											<td bgcolor="#990033" valign="top">
												<table width="100%" cellpadding="5">
													<form action="confirm_login.php" method="post">
													<tr>
														<td width="10%" valign="top" colspan="2" class="judulputih">
															SIGN IN
														</td>
													</tr>
													<tr>
														<td width="10%" valign="top" align="right" class="teksputihkecil">
															Email :
														</td>
														<td>
															<input type="text" name="id" class="tekshitamkecil">
														</td>
													</tr>
													<tr>
														<td width="10%" valign="top" align="right" class="teksputihkecil">
															Password :
														</td>
														<td>
															<input type="password" name="pass" class="tekshitamkecil">
														</td>
													</tr>
													<tr>
														<td width="10%" valign="top" align="right" class="teksputihkecil">
														</td>
														<td>
															<input type="submit" name="login" class="tekshitamkecil" value=" GO ! ">
														</td>
													</tr>
													</form>
												</table>
											</td>
										</tr>
									</table>
								</td>
								<td class="" width="50%" valign="top">
									<table cellspacing="2" width="100%" height="100%">
										<tr>
											<td >
												<br>
												<table width="100%" height="100%" cellpadding="5">
													<tr>
														<td valign="top">														
															<p><span class="teksmerah"><strong><u><a href="sign_up.php">SIGN UP</a></u></strong></span><span class="style1"><span class="style3"><br>
													  	    </span></span><span class="teksmerah">New Member</span><span class="style1"> <br>
														    </span><span class="tekshitamkecil">dan dapatkan fasilitas :</span></p>
															<div class="teksmerah">&bull; Newsletter berisi New Arrival
															Books dan special promo<br><br>
															&bull; Layanan antar gratis untuk pembelian
															sejumlah Rp85.000,- atau lebih </div></td>
														<td valign="top">
														
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<?php
					}
					?>
<?php
print_footer();
?>