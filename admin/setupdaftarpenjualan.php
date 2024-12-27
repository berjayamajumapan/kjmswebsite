<?php
session_start();
include "../include/connection.php";
include "fungsi.php";
include "viewer.php";

checklanjut();

if(isset($_POST['buy'])){
        $field[1][1]="Status";
        $field[1][2]="'2'";
        $field[2][1]="";
        $field[2][2]="";
        generate_query("update",$field,"tr_order","where NoOrder='".$_POST['NoOrder']."'","");
		
		//diisi ke table transaksi penjualan

		$result=mysql_query("select * from tr_order where NoOrder='".$_POST['NoOrder']."'");
		$row=mysql_fetch_row($result);

		$nopenjualan=ambilnomor1("NoPenjualan","tr_penjualan where LEFT(NoPenjualan,6)='".date("ymd")."' ",date("ymd."),"000");
		//isi header order
		$field[1][1]="NoPenjualan";
		$field[1][2]="'".$nopenjualan."'";
		$field[2][1]="ID";
		$field[2][2]="'".$row[1]."'";
		$field[3][1]="Nama";
		$field[3][2]="'".$row[2]."'";
		$field[4][1]="Email";
		$field[4][2]="'".$row[3]."'";
		$field[5][1]="Alamat";
		$field[5][2]="'".$row[4]."'";
		$field[6][1]="TelpFax";
		$field[6][2]="'".$row[5]."'";
		$field[7][1]="Status";
		$field[7][2]="'0'";
		$field[8][1]="Total";
		$field[8][2]="'".$row[7]."'";
		$field[9][1]="Discount";
		$field[9][2]="'".$row[8]."'";
		$field[10][1]="Bayar";
		$field[10][2]="'".$row[9]."'";
		$field[11][1]="AlamatKirim";
		$field[11][2]="'".$row[10]."'";
		$field[12][1]="AlamatTagih";
		$field[12][2]="'".$row[11]."'";
		$field[13][1]="Pembayaran";
		$field[13][2]="'".$row[12]."'";
		$field[14][1]="";
		$field[14][2]="";
		generate_query("insert",$field,"tr_penjualan","","");
		
		//isi detail order
		$result=mysql_query("select * from tr_order_detail where NoOrder='".$_POST['NoOrder']."'");
		$i = 0;
		while($row=mysql_fetch_row($result)){
			$i++;
			$field[1][1]="NoPenjualan";
			$field[1][2]="'".$nopenjualan."'";
			$field[2][1]="IDBuku";
			$field[2][2]="'".$row[1]."'";
			$field[3][1]="NamaBuku";
			$field[3][2]="'".$row[2]."'";
			$field[4][1]="Edisi";
			$field[4][2]="'".$row[3]."'";
			$field[5][1]="Harga";
			$field[5][2]="'".$row[4]."'";
			$field[6][1]="Jumlah";
			$field[6][2]="'".$row[5]."'";
			$field[7][1]="";
			$field[7][2]="";
			generate_query("insert",$field,"tr_penjualan_detail","","");
		}
	
		$field[1][1]="Status";
		$field[1][2]="1";
		$field[2][1]="";
		$field[2][2]="";
		generate_query("update",$field,"tr_keranjang","where ID='".$_SESSION['id']."' and Status='0'","");
		
}

if(isset($_POST['order'])){
        $field[1][1]="Status";
        $field[1][2]="'1'";
        $field[2][1]="";
        $field[2][2]="";
        generate_query("update",$field,"tr_order","where NoOrder='".$_POST['NoOrder']."'","");
}

if(isset($_GET['edit'])){
        if($_GET['no']!=""){
                $result1= mysql_query("select * from tr_penjualan where NoPenjualan='".$_GET['no']."'");
                $row1=mysql_fetch_row($result1);
        }
}

if(isset($_GET['hapus'])){
	if($_GET['no']!=""){
		generate_query("delete","","tr_penjualan","where NoPenjualan='".$_GET['no']."'","");
		generate_query("delete","","tr_penjualan_detail ","where NoPenjualan='".$_GET['no']."'","");
	}
	if(isset($_GET['no'])){
		$_GET['no']="";
	}
}


$result = mysql_query("select * from tr_penjualan Order by NoPenjualan");

header_view();

?>
                                <tr>

                                        <td class="judulbiru">

                                               Daftar Transaksi Penjualan:

                                        </td>

                                </tr>
<?php
if(isset($_GET['no'])){
?>
                                <tr>
                                        <td class="tekshitam">
                                                Detail Penjualan:
                                        </td>
                                </tr>
                                <tr>
                                        <td class="tekshitam">										
											<table width="95%" align="center" class="tekshitamkecil">
												<tr>
													<td width="20%"> 
														ID
													</td>
													<td>
														<?php echo $row1[1]?>
													</td>
												</tr>
												<tr>
													<td>
														Nama
													</td>
													<td>
														<?php echo $row1[2]?>
													</td>
												</tr>
												<tr>
													<td>
														Email
													</td>
													<td>
														<?php echo $row1[3]?>
													</td>
												</tr>
												<tr>
													<td>
														Alamat
													</td>
													<td>
														<pre><?php echo $row1[4]?></pre>
													</td>
												</tr>
												<tr>
													<td>
														Status
													</td>
													<td>
														<?php
														if($row1[6]=='0'){
															echo "Order";
														}
														elseif($row1[6]=='1'){
															echo "Approve";
														}
														elseif($row1[6]=='2'){
															echo "Finish";
														}
														?>
													</td>
												</tr>
												<tr>
													<td colspan="2">
														<hr>
													</td>
												</tr>
												<tr>
													<td>
														No  Penjualan
													</td>
													<td>
														<b><?php echo $row1[0]?></b>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td valign="top">
														Alamat Pengiriman
													</td>
													<td>
														<pre><?php echo $row1[10]?></pre>
													</td>
												</tr>
											</table>
											<br>
											Item Penjualan<br><br>
											<table border="0" width="95%" bgcolor="#336699" cellspacing="1" align="center" cellpadding="3" class="tekshitamkecil">
												<tr bgcolor="#FAFAFA">
													<td>Kode Buku</td>
													<td>Judul Buku</td>
													<td>Edisi</td>
													<td>Harga</td>
													<td>Jumlah</td>
													<td>Total</td>
												</tr>
											<?php
											$iditem="";
											//$result2 = mysql_query("select * from tr_order_detail 
											//					   inner join t_shop on tr_order_detail.IDItem = t_shop.IDItem
											//					   where NoOrder='".$row1[0]."'");
											$result2 = mysql_query("select * from tr_penjualan_detail 
																   where NoPenjualan='".$row1[0]."'");
											$addnewitem = true;
											$i = 0;
											while($row2=mysql_fetch_row($result2)){
												$i++;
												if($iditem==$row2[1]){
													$addnewitem = false;
												}
											?>
												<tr bgcolor="#FAFAFA">
													<td valign="top">
														<?php echo $row2[1]?><input type="hidden" name="iditem<?php echo $i?>" value="<?php echo $row[1]?>">
													</td>
													<td valign="top">
														<?php echo $row2[2]?>
													</td>
													<td valign="top">
														<?php echo $row2[3]?>
													</td>
													<td valign="top" align="right">
														Rp <?php echo $row2[4]?>,-
													</td>
													<td valign="top" align="center">
														<?php echo $row2[5]?>
													</td>
													<td valign="top" align="right"> 
														Rp <?php echo $row2[4]*$row2[5]?>,-
													</td>
												</tr>
											<?php
											}
											?>
											</table>
											<!--
											<table width="95%" align="center">
												<tr>
													<td align="center"> 
													<form method="post" action="setupdaftarpenjualan.php">
														<br>
														<input type="hidden" name="NoOrder" value="<?php echo $row1[0]?>">
														<input type="submit" name="order" value="Approve >>">&nbsp;&nbsp;
														<input type="submit" name="buy" value="<< Set Ke Trs. Penjualan >>">
													</form>
													</td>
												</tr>
											</table>
											-->
                                        </td>
                                </tr>
<?php
}
?>
								<tr>
									<td>
										<hr size="1">
                                                <br>
                                                <table  bgcolor="#CC3300" cellspacing="1" border="0" width="95%" cellpadding="3" align="center">
                                                        <tr class="teksmerah" bgcolor="#FFCC66">
                                                                <td>
                                                                        No. Order
                                                                </td>
                                                                <td>
                                                                        ID User
                                                                </td>
                                                                <td width="100">
                                                                        Nama User
                                                                </td>
                                                                <td width="50">
                                                                        Action
                                                                </td>
																<td width="10">
																	Delete
																</td>
                                                        </tr>
                                                        <?php
                                                        while($row=mysql_fetch_row($result)){
                                                        ?>
                                                        <tr bgcolor="#FDFDFD" class="tekshitamkecil" valign="top">
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
                                                                        <a href="setupdaftarpenjualan.php?edit=1&no=<?php echo $row[0]?>" class="link">Lihat Detail Penjualan</a>
                                                                </td>
																<td>
																	<a href="setupdaftarpenjualan.php?hapus=1&no=<?php echo $row[0]?>" class="link">Delete</a>
																</td>
                                                        </tr>
                                                        <?php
                                                        }
                                                        ?>
                                                </table>
									</td>
								</tr>
                        </table>
                </td>
        </tr>
<?php
footer_view();
?>