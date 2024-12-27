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


//==================================

if($_POST['txtAction']=="check"){
	
	$nopenjualan=ambilnomor1("NoPenjualan","tr_penjualan where LEFT(NoPenjualan,6)='".date("ymd")."' ",date("ymd."),"000");
	
	//isi header order
	$field[1][1]="NoPenjualan";
	$field[1][2]="'".$nopenjualan."'";
	$field[2][1]="ID";
	$field[2][2]="'".$_GET['pelanggan']."'";
	$field[3][1]="Nama";
	$field[3][2]="'".$_POST['txtNama']."'";
	$field[4][1]="Email";
	$field[4][2]="'".$_GET['pelanggan']."'";
	$field[5][1]="Alamat";
	$field[5][2]="'".$_POST['txtAlamat']."'";
	$field[6][1]="TelpFax";
	$field[6][2]="'".$_POST['txtTelpon']."'";
	$field[7][1]="Status";
	$field[7][2]="'0'";
	$field[8][1]="Total";
	$field[8][2]="'".$_POST['total']."'";
	$field[9][1]="Discount";
	$field[9][2]="'".$_POST['discount']."'";
	$field[10][1]="Bayar";
	$field[10][2]="'".$_POST['bayar']."'";
	$field[11][1]="AlamatKirim";
	$field[11][2]="'".$_POST['txtMailling']."'";
	$field[12][1]="AlamatTagih";
	$field[12][2]="'".$_POST['txtBilling']."'";
	$field[13][1]="Pembayaran";
	$field[13][2]="'".$_POST['txtPembayaran']."'";
	$field[14][1]="";
	$field[14][2]="";
	generate_query("insert",$field,"tr_penjualan","","");
	
	//isi detail order
	$i = 0;
	while(list($key, $value)=each($_POST['jumlah'])){
		$i++;
		$field[1][1]="NoPenjualan";
		$field[1][2]="'".$nopenjualan."'";
		$field[2][1]="IDBuku";
		$field[2][2]="'".$_POST['iditem'.$i]."'";
		$field[3][1]="NamaBuku";
		$field[3][2]="'".$_POST['judul'.$i]."'";
		$field[4][1]="Edisi";
		$field[4][2]="'".$_POST['edisi'.$i]."'";
		$field[5][1]="Harga";
		$field[5][2]="'".$_POST['harga'.$i]."'";
		$field[6][1]="Jumlah";
		$field[6][2]=$value;
		$field[7][1]="";
		$field[7][2]="";
		generate_query("insert",$field,"tr_penjualan_detail","","");
	}

	$field[1][1]="Status";
	$field[1][2]="1";
	$field[2][1]="";
	$field[2][2]="";
	generate_query("update",$field,"tr_keranjang","where ID='".$_GET['pelanggan']."' and Status='0'","");
	header("Location: setuppenjualan.php");	
}

if(isset($_GET['ID'])){

	$result=mysql_query("select 1 from tr_keranjang where IDBuku='".$_GET['ID']."' and ID='".$_GET['pelanggan']."' and status='0' ");
	$row=mysql_fetch_row($result);
	
	if($row[0]!="1"){
		$result=mysql_query("select Judul, HargaJual, Edisi from tr_buku where IDBuku='".$_GET['ID']."'");
		$row=mysql_fetch_row($result);
	
		$field[1][1]="ID";
		$field[1][2]="'".$_GET['pelanggan']."'";
		$field[2][1]="IDBuku";
		$field[2][2]="'".$_GET['ID']."'";
		$field[3][1]="NamaBuku";
		$field[3][2]="'".$row[0]."'";
		$field[4][1]="Edisi";
		$field[4][2]="'".$row[2]."'";
		$field[5][1]="Harga";
		$field[5][2]="'".$row[1]."'";
		$field[6][1]="Jumlah";
		$field[6][2]="1";
		$field[7][1]="Status";
		$field[7][2]="'0'";
		$field[8][1]="";
		$field[8][2]="";
		generate_query("insert",$field,"tr_keranjang","","");
	}
}

if($_POST['txtAction']=="update"){
	$i = 0;
	while(list($key, $value)=each($_POST['jumlah'])){
		$i++;
		$field[1][1]="Jumlah";
		$field[1][2]=$value;
		$field[2][1]="";
		$field[2][2]="";
		generate_query("update",$field,"tr_keranjang","where IDBuku='".$_POST['iditem'.$i]."' and  ID='".$_GET['pelanggan']."' and Status='0'","");
	}
	
	if(is_array($_POST['idhapus'])){
		while(list($key, $value)=each($_POST['idhapus'])){
			mysql_query("delete from tr_keranjang where IDBuku='".$value."' and  ID='".$_GET['pelanggan']."' and Status='0'");
		}
	}
}

header_view();

//if(isset($_GET['no'])){
?>
                                <tr>

                                        <td class="judulbiru">

                                               Pencatata Transaksi Penjualan:

                                        </td>

                                </tr>
<form action="" method="post" name="fmForm">
<tr>
	<td>
	<table width="90%" align="center" class="tekshitam">
		
		<?php
			$result=mysql_query("select * from tr_anggota where ID='".$_GET['pelanggan']."' ");
			$row=mysql_fetch_row($result);
		?>
		<!--
		<td rowspan="4" width="10%">
			<img src="images/icon_basket.gif">
		</td>
		-->
		<th colspan="3" align="left" class="title">
			&raquo; Info Data Anggota
		</th>	
		<tr>
			<td>ID Pelanggan</td>
			<td width="1%" valign="top">
				:
			</td>
			<td>
				<?php
				$result2=mysql_query("SELECT * FROM tr_anggota");
				?>
				<select name="pelanggan"  class="tekshitamkecil" onChange="view1();">
					<option>pilih------------------------------</option>
				<?php
				while($row2=mysql_fetch_row($result2)){
				?>
					<option value="<?php echo $row2[0]?>" <?php
						if(isset($_GET['edit'])){
							if($row1[2]==$row2[0]){
								echo " selected ";
							}
						}

						if(isset($_GET['pelanggan'])){
							if($_GET['pelanggan']==$row2[0]){
								echo " selected ";
							}
						}
					?>><?php echo $row2[1]?></option>
				<?php
				}
				?>
				</select>
			</td>
		</tr>
		<tr>
			<td width="20%" valign="top">
				Nama Lengkap
			</td>
			<td width="1%" valign="top">
				:
			</td>
			<td>
				<?php echo $row[3]?> <?php echo $row[4]?><input type="hidden" name="txtNama" value="<?php echo $row[3]." ".$row[4]?>">
			</td>
		</tr>
		<tr>
			<td valign="top">
				Alamat lengkap
			</td>
			<td width="1%" valign="top">
				:
			</td>
			<td>
				<?php
					echo $row[7]."<br>";
					echo $row[8]."<br>";
					echo "Kode Pos : ".$row[9]."<br>";
					echo "-------------------------------<br>";
					echo $row[10].", ".$row[11]."<br>";
					echo $row[12]."\n";
				?>
				<input type="hidden" name="txtAlamat" value="<?php
					echo $row[7]."\n";
					echo $row[8]."\n";
					echo "Kode Pos : ".$row[9]."\n";
					echo "-------------------------------\n";
					echo $row[10].", ".$row[11]."\n";
					echo $row[12]."\n";
				?>">
			</td>
		</tr>
		<tr>
			<td>
				Telepon/HP - Fax
			</td>
			<td width="1%" valign="top">
				:
			</td>
			<td>
				<?php echo $row[13]?> - <?php echo $row[14]?><input type="hidden" name="txtTelpon" value="<?php echo $row[13]?> - <?php echo $row[14]?>">
			</td>
		</tr>
	<tr>
		<td width="20%" valign="top">
			 Alamat pengiriman buku
		</td>
		<td valign="top">:</td>
		<td>
		<?php
		$result1=mysql_query("select * from tmp_order where ID='".$_SESSION['id']."' ");
		$row1=mysql_fetch_row($result1);
		if($row1[1]==""){
		?>
			<textarea name="txtMailling" cols="50" rows="5" class="tekshitamkecil"><?php
				echo $row[7]."\n";
				echo $row[8]."\n";
				echo "Kode Pos : ".$row[9]."\n";
				echo "-------------------------------\n";
				echo $row[10].", ".$row[11]."\n";
				echo $row[12]."\n";
			?></textarea>
		<?php
		}
		else{
		?>
			<textarea name=" txtAlamat" cols="50" rows="5" class="tekshitamkecil"><?php
				echo $row1[1];
			?></textarea>
		<?php
		}
		?>		
		</td>
	</tr>
		<!--
		<tr>
			<td align="center" colspan="4" class="teksjudul">
			<br>
				<a href="" class="teksjudul"><b>Update Data Anggota</b></a> >>
			<br>
			<br>
			</td>
		</tr>
		-->
	</table>
	<br>
	<table border="0" width="90%" bgcolor="#076BA7" cellspacing="1" align="center" class="tekshitamkecil" cellpadding="5">
		<!--
		<th bgcolor="#FFCC66" colspan="6">
				Daftar Isi Keranjang
		</th>
		-->
		<tr bgcolor="#FF8D2B" valign="middle" class="menu01">
			<td>Hapus</td>
			<td colspan="4">Keterangan</td>
			<td>Qty</td>
			<td>Price</td>
		</tr>
	<?php
	$result = mysql_query("select * from tr_keranjang  where ID='".$_GET['pelanggan']."' and Status='0'");
	$addnewitem = true;
	
	$tampungtotal=0;
	$diskon=0;
	$count=0;
	$jmltotal=0;
	
	$i = 0;
	while($row=mysql_fetch_row($result)){
		$i++;
		if($iditem==$row[1]){
			$addnewitem = false;
		}
	?>
		<tr bgcolor="#FAFAFA" valign="middle">
			<td valign="top" width="10">
				<input type="checkbox" name="idhapus[]" value="<?php echo $row[1]?>">
			</td>
			<td valign="top" width="25">
				<?php echo $row[1]?><input type="hidden" name="iditem<?php echo $i?>" value="<?php echo $row[1]?>">
			</td>
			<td valign="top" width="300">
				<?php echo $row[2]?><input type="hidden" name="judul<?php echo $i?>" value="<?php echo $row[2]?>">
			</td>
			<td valign="top" width="300">
				Edisi : <?php echo $row[3]?><input type="hidden" name="edisi<?php echo $i?>" value="<?php echo $row[3]?>">
			</td>
			<td valign="top" align="right" width="150">
				Rp <?php echo $row[4]?>,-<input type="hidden" name="harga<?php echo $i?>" value="<?php echo $row[4]?>">
			</td>
			<td valign="top" width="50">
				<input type="text" name="jumlah[]" value="<?php echo $row[5]?>" size="4" class="tekshitamkecil">
			</td>
			<td valign="top" align="right" width="150">
				Rp <?php echo $row[4]*$row[5]?>,-
				
				<?php
					if($row[1]==$ID1 || $row[1]==$ID2){
						$tampungtotal+=($row[4]*$row[5]);
						$count++;
					}
					
					$grandtotal+=($row[4]*$row[5]);
					$jmltotal+=$row[5];
				?>
			</td>
		</tr>
	<?php
	}
	?>
		<tr bgcolor="#FAFAFA" valign="middle">
			<td valign="top" colspan="5" align="right">
				<input type="hidden" name="total" value="<?php echo $grandtotal?>">
				<b>Total</b>
			</td>
			<td>
				<?php echo $jmltotal?>
			</td>
			<td valign="top" align="right">
				<b>Rp <?php echo $grandtotal?>,-</b>
			</td>
		</tr>
	<?php
	if($tampungtotal>0 && $count>1){
	?>
		<tr bgcolor="#FAFAFA" valign="middle">
			<td valign="top" colspan="5" align="right">
				<input type="hidden" name="discount" value="<?php echo ($Disk/100)*$tampungtotal?>">
				<b>Diskon</b>
			</td>
			<td valign="top" colspan="2" align="right">
				<b>Rp <?php echo ($Disk/100)*$tampungtotal?>,-</b>
			</td>
		</tr>
		<tr bgcolor="#FAFAFA" valign="middle">
			<td valign="top" colspan="5" align="right">
				<input type="hidden" name="bayar" value="<?php echo $grandtotal-(($Disk/100)*$tampungtotal)?>">
				<b>Bayar</b>
			</td>
			<td valign="top" colspan="2" align="right">
				<b>Rp <?php echo $grandtotal-(($Disk/100)*$tampungtotal)?>,-</b>
			</td>
		</tr>
	<?php
	}
	else{
	?>
	<input type="hidden" name="discount" value="0">
	<input type="hidden" name="bayar" value="<?php echo $grandtotal?>">
	<?php
//	}
	?>
	</table>
	<br>
	<table width="92%" align="center" cellpadding="5">
		<tr>
			<td class="tekshitamkecil">
			<input type="hidden" name="txtAction" value="">
			<a href="#" onClick="basketSubmit('update')"><img src="../images/button_update.gif" border="0"></a>
				&nbsp;&nbsp;&nbsp;&nbsp;
			<!--
			<a href="#" onClick="basketSubmit('check')"><img src="images/button_check_out.gif" border="0"></a>
			-->
			<a href="#" onClick="basketSubmit('check')"><img src="../images/button_check_out.gif" border="0"></a>
			
			<!--
				<input type="image" name="UpdateOrder" value="Simpan Perubahan   " src="images/button_update.gif" class="tekshitamkecil">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="image" name="search" value=" Tambah Buku         " src="images/button_continue_shop.gif" class="tekshitamkecil" onClick="document.fmSearch.submit();">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="image" name="Purchase" value="Kirim Order             " src="images/button_check_out.gif" class="tekshitamkecil">
			-->
			</td>
		</tr>
	</table>
</form>                                
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
                                                                        Kode Buku
                                                                </td>
                                                                <td>
                                                                        Judul
                                                                </td>
                                                                <td width="100">
                                                                        Edisi
                                                                </td>
                                                                <td width="50">
                                                                        Action
                                                                </td>
																<td width="10">
																		Action
																</td>
                                                        </tr>
                                                        <?php
														$result=mysql_query("select * from tr_buku");
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
                                                                        <?php echo $row[7]?>
                                                                </td>
                                                                <td>
																		<a href="setupbuku.php?edit=1&no=<?php echo $row[0]?>" class="link">Lihat Detail Buku</a>
                                                                </td>
																<td>
																	<a href="setuppenjualan.php?ID=<?php echo $row[0]?>&pelanggan=<?php echo $_GET['pelanggan']?>" class="link">Masukan Ke Penjualan</a>
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