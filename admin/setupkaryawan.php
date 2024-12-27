<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$message="";
if(isset($_POST['Kirim'])){
		$no=ambilnomor("ID","t_biodata","0","00");

		$field[1][1]="ID";
		$field[1][2]="'".$no."'";
		$field[2][1]="Nama";
		$field[2][2]="'".$_POST['nama']."'";
		$field[3][1]="TTL";
		$field[3][2]="'".$_POST['email']."'";
		$field[4][1]="Alamat";
		$field[4][2]="'".$_POST['alamat']."'";
		$field[5][1]="Telp";
		$field[5][2]="'".$_POST['telpfax']."'";
		$field[6][1]="Publish";
		$field[6][2]="'".$_POST['Publish']."'";
		$field[7][1]="";
		$field[7][2]="";
		generate_query("insert",$field,"t_biodata","","");
		$message="Pesan terkirim, dan akan segera diproses! Terimakasih";
}

print_header("contact");
?>
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<img src="images/icon_pesan.gif" align="absmiddle"> Kontak Kami
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
<table width="90%" align="center" class="tekshitam">
	<tr>
		<td colspan="2">
			<font color="#FF0000"><?php echo $message?></font>
		</td>
	</tr>
<form action="" method="post">
	<tr>
		<td>
			Name
		</td>
		<td>
			<input type="text" name="nama" size="20">
		</td>
	</tr>
	<tr>
		<td>
			Email
		</td>
		<td>
			<input type="text" name="email" size="20">
		</td>
	</tr>
	<tr>
		<td>
			Alamat
		</td>
		<td>
			<input type="text" name="alamat" size="20">
		</td>
	</tr>
	<tr>
		<td>
			Telp / Fax
		</td>
		<td>
			<input type="text" name="telpfax" size="20">
		</td>
	</tr>
	<tr>
		<td>
			Pesan
		</td>
		<td>
			<textarea name="pesan" cols="20" rows="5"></textarea>
		</td>
	</tr>
	<tr>
		<td>
		</td>
		<td>
			<input type="submit" name="Kirim" size="20" value=" Send ">
			<input type="reset" name="Reset" size="20" value=" Reset ">
		</td>
	</tr>
</form>
</table>
<?php
print_footer();
?>