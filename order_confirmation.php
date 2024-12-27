<?php
session_start();

include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$grandtotal=0;
checklanjut();
$noorder="";

if($_POST['txtAction']=="check"){
	
	$noorder=ambilnomor("NoOrder","tr_order where LEFT(NoOrder,6)='".date("ymd")."' ",date("ymd."),"000");
	
	//isi header order
	$field[1][1]="NoOrder";
	$field[1][2]="'".$noorder."'";
	$field[2][1]="ID";
	$field[2][2]="'".$_SESSION['id']."'";
	$field[3][1]="Nama";
	$field[3][2]="'".$_POST['txtNama']."'";
	$field[4][1]="Email";
	$field[4][2]="'".$_SESSION['id']."'";
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
	generate_query("insert",$field,"tr_order","","");
	
	//isi detail order
	$i = 0;
	while(list($key, $value)=each($_POST['jumlah'])){
		$i++;
		$field[1][1]="NoOrder";
		$field[1][2]="'".$noorder."'";
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
		generate_query("insert",$field,"tr_order_detail","","");
	}

	$field[1][1]="Status";
	$field[1][2]="1";
	$field[2][1]="";
	$field[2][2]="";
	generate_query("update",$field,"tr_keranjang","where ID='".$_SESSION['id']."' and Status='0'","");
	header("Location: purchase_confirm.php?noorder=".$noorder);	
}

if(isset($_GET['ID']) && isset($_SESSION['id'])){

	$result=mysql_query("select 1 from tr_keranjang where IDBuku='".$_GET['ID']."' and ID='".$_SESSION['id']."' and status='0' ");
	$row=mysql_fetch_row($result);
	
	if($row[0]!="1"){
		$result=mysql_query("select Judul, HargaJual from tr_buku where IDBuku='".$_GET['ID']."'");
		$row=mysql_fetch_row($result);
	
		$field[1][1]="ID";
		$field[1][2]="'".$_SESSION['id']."'";
		$field[2][1]="IDBuku";
		$field[2][2]="'".$_GET['ID']."'";
		$field[3][1]="NamaBuku";
		$field[3][2]="'".$row[0]."'";
		$field[4][1]="Harga";
		$field[4][2]="'".$row[1]."'";
		$field[5][1]="Jumlah";
		$field[5][2]="1";
		$field[6][1]="Status";
		$field[6][2]="'0'";
		$field[7][1]="";
		$field[7][2]="";
		generate_query("insert",$field,"tr_keranjang","","");
	}
}

if(isset($_GET['ID1']) && isset($_SESSION['id'])){

	$result=mysql_query("select 1 from tr_keranjang where IDBuku='".$_GET['ID1']."' and ID='".$_SESSION['id']."' and status='0' ");
	$row=mysql_fetch_row($result);
	
	if($row[0]!="1"){
		$result=mysql_query("select Judul, HargaJual from tr_buku where IDBuku='".$_GET['ID1']."'");
		$row=mysql_fetch_row($result);
	
		$field[1][1]="ID";
		$field[1][2]="'".$_SESSION['id']."'";
		$field[2][1]="IDBuku";
		$field[2][2]="'".$_GET['ID1']."'";
		$field[3][1]="NamaBuku";
		$field[3][2]="'".$row[0]."'";
		$field[4][1]="Harga";
		$field[4][2]="'".$row[1]."'";
		$field[5][1]="Jumlah";
		$field[5][2]="1";
		$field[6][1]="Status";
		$field[6][2]="'0'";
		$field[7][1]="";
		$field[7][2]="";
		generate_query("insert",$field,"tr_keranjang","","");
	}
}

if(isset($_GET['ID2']) && isset($_SESSION['id'])){

	$result=mysql_query("select 1 from tr_keranjang where IDBuku='".$_GET['ID2']."' and ID='".$_SESSION['id']."' and status='0' ");
	$row=mysql_fetch_row($result);
	
	if($row[0]!="1"){
		$result=mysql_query("select Judul, HargaJual from tr_buku where IDBuku='".$_GET['ID2']."'");
		$row=mysql_fetch_row($result);
	
		$field[1][1]="ID";
		$field[1][2]="'".$_SESSION['id']."'";
		$field[2][1]="IDBuku";
		$field[2][2]="'".$_GET['ID2']."'";
		$field[3][1]="NamaBuku";
		$field[3][2]="'".$row[0]."'";
		$field[4][1]="Harga";
		$field[4][2]="'".$row[1]."'";
		$field[5][1]="Jumlah";
		$field[5][2]="1";
		$field[6][1]="Status";
		$field[6][2]="'0'";
		$field[7][1]="";
		$field[7][2]="";
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
		generate_query("update",$field,"tr_keranjang","where IDBuku='".$_POST['iditem'.$i]."' and  ID='".$_SESSION['id']."' and Status='0'","");
	}
	
	if(is_array($_POST['idhapus'])){
		while(list($key, $value)=each($_POST['idhapus'])){
			mysql_query("delete from tr_keranjang where IDBuku='".$value."' and  ID='".$_SESSION['id']."' and Status='0'");
		}
	}
}

/*
if(isset($_GET['del'])){
	mysql_query("delete from tr_keranjang where IDBuku='".$_GET['del']."'  and  ID='".$_SESSION['id']."' and Status='0'");
}
*/

print_header("");

?>
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_berita.gif" align="absmiddle"> Konfirmasi</font>
		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink">
		<?php
			$result=mysql_query("select count(ID) from tr_keranjang where ID='".$_SESSION['id']."' and status='0' ");
			$row=mysql_fetch_row($result);
			echo $row[0];
		?>
			buku pada pesanan Anda <img src="images/icon_keranjang.gif" align="absmiddle" border="0"></a>
		</td>
	</tr>
</table>
<hr size="1" color="#87C6EC" width="95%">
<form action="order_confirmation.php" method="post" name="fmForm">
<table width="90%" align="center" class="tekshitam">
	<?php
		$result=mysql_query("select * from tr_anggota where ID='".$_SESSION['id']."' ");
		$row=mysql_fetch_row($result);
	?>
			<input type="hidden" name="txtNama" value="<?php echo $row[3]." ".$row[4]?>">	
			<input type="hidden" name="txtAlamat" value="<?php
				echo $row[7]."\n";
				echo $row[8]."\n";
				echo "Kode Pos : ".$row[9]."\n";
				echo "-------------------------------\n";
				echo $row[10].", ".$row[11]."\n";
				echo $row[12]."\n";
			?>">
			<input type="hidden" name="txtTelpon" value="<?php echo $row[13]?> - <?php echo $row[14]?>">
	<?php
		$result=mysql_query("select * from tr_anggota where ID='".$_SESSION['id']."' ");
		$row=mysql_fetch_row($result);
	?>
	<?php
	$result1=mysql_query("select * from tmp_order where ID='".$_SESSION['id']."' ");
	$row1=mysql_fetch_row($result1);
	?>
	<tr>
		<td width="20%" valign="top" class="title">
			 <B>&raquo; Mailling address:</B>
		</td>
	</tr>
	<tr>
		<td>
			<input type="hidden" name="txtMailling" value="<?php echo $row1[1];?>">
			<pre><?php echo $row1[1];?></pre>
		</td>
	</tr>
	<tr>
		<td width="20%" valign="top" class="title">
				<BR>			 
			 <B>&raquo; Billing address:</B>
		</td>
	</tr>
	<tr>
		<td>
			<input type="hidden" name="txtBilling" value="<?php echo $row1[2];?>">
			<pre><?php echo $row1[2];?></pre>
		</td>
	</tr>
	<tr>
		<td width="20%" valign="top" class="title">
			 <BR>
			 <B>&raquo; Payment Preference:</B>
		</td>
	</tr>
	<tr>
		<td>
			<input type="hidden" name="txtPembayaran" value="<?php echo $row1[3];?>">
			<?php
				echo $row1[3];
			?>
		</td>
	</tr>
	<tr>
		<td colspan="3" class="title">
		<br>
			<b>&raquo; Daftar Mobil Yang dipesan : </b>
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
<table border="0" width="90%" bgcolor="#076BA7" cellspacing="1" align="center" class="tekshitamkecil" cellpadding="5">
	<!--
	<th bgcolor="#FFCC66" colspan="6">
			Daftar Isi Keranjang
	</th>
	-->
	<tr bgcolor="#FF8D2B" valign="middle" class="menu01">
		<td colspan="4">Item Description</td>
		<td>Quantity</td>
		<td>Price</td>
	</tr>
<?php
$result = mysql_query("select * from tr_keranjang where ID='".$_SESSION['id']."' and Status='0'");
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
			<input type="hidden" name="jumlah[]" value="<?php echo $row[5]?>" size="4" class="tekshitamkecil">
			<?php echo $row[5]?>
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
		<td valign="top" colspan="4" align="right">
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
		<td valign="top" colspan="4" align="right">
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
}
?>
</table>
<br>
<table width="92%" align="center" cellpadding="5">
	<tr>
	  <td class="tekshitamkecil">
		<input type="hidden" name="txtAction" value="">
		<a href="#" onClick="basketSubmit('check')"><img src="images/button_continue1.gif" border="0"></a>
		
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
<?php
print_footer();
?>