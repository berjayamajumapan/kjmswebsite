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
	
	//isi header order
	$field[1][1]="AlamatTagih";
	$field[1][2]="'".$_POST['txtAlamat']."'";
	$field[2][1]="Pembayaran";
	$field[2][2]="'".$_POST['txtBill']."'";
	$field[3][1]="";
	$field[3][2]="";
	generate_query("update",$field,"tmp_order","where ID='".$_SESSION['id']."'","");
}

print_header("");

?>
<br>
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_berita.gif" align="absmiddle"> Payment Details</font>
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
<form action="payment_details.php" method="post" name="fmForm">
<table width="90%" align="center" class="tekshitam">
	
	<?php
		$result=mysql_query("select * from tr_anggota where ID='".$_SESSION['id']."' ");
		$row=mysql_fetch_row($result);
	?>
	<tr>
		<td class="title">
			<b>&raquo; Billing Adress</b>
			<br>
		</td>
	</tr>	
	<tr>
		<td width="20%" valign="top">
			  Invoice for your purchases will be sent the following address:
		</td>
	</tr>
	<tr>
		<td>
		<?php
		$result1=mysql_query("select * from tmp_order where ID='".$_SESSION['id']."' ");
		$row1=mysql_fetch_row($result1);
		if($row1[2]==""){
		?>
			<textarea name=" txtAlamat" cols="50" rows="5" class="tekshitamkecil"><?php
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
				echo $row1[2];
			?></textarea>
		<?php
		}
		?>		
		</td>
	</tr>
	<tr>
		<td class="tekshitamkecil">
		<br>
		<input type="hidden" name="txtAction" value="">
		<a href="#" onClick="basketSubmit('check')"><img src="images/button_change_add.gif" border="0"></a>
			&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="order_confirmation.php"><img src="images/button_continue1.gif" border="0"></a>
		</td>
	</tr>
	<tr>
		<td>
			<br>
			Please select the account number you prefer to address your transfer payment:
			<br><br	>
		</td>
	</tr>	
	<?php
	$result2=mysql_query("select * from tw_about where Judul='Rekening' ");
	while($row2=mysql_fetch_row($result2)){
	?>
	<tr>
		<td>
			<input type="radio" value="<?php echo $row2[2]?>" name="txtBill" <?php
			if($row1[3]==$row2[2]){
				echo " checked";
			}
			?>><?php echo $row2[2]?>
		</td>
	</tr>	
	<?php
	}
	?>
	<tr>
		<td>
		<br>
		  Kindly send us your payment confirmation by email or SMS/phone 
		  call to 0878 1207 4802 / 0812 5473 5085 ( hunting ) or by sending us your copy transfer thru via email dedipurwanto@gmail.com. 
		  Thank you for your payment.
		</td>
	</tr>
</table>
<br>
</form>
<?php
print_footer();
?>