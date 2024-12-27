<?php
session_start();

if(isset($_SESSION['noorder'])){
	header("Location:order_chart.php?noorder=".$_SESSION['noorder']."&iditem=".$_GET['iditem']."");		
}

include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";



$noorder=ambilnomor("NoOrder","t_order","0","0000");

print_header("");

if(isset($_GET['err'])){
	if($_GET['err']=="1"){
		echo "Maaf, noorder tidak ada!";
	}
}
?>
<table width="90%" align="center">
<form action="order_chart.php" method="post">
	<tr>
		<td colspan="2">
		Jika sudah mempunyai normor order, submit no order anda:
		</td>		
	</tr>
	<tr>
		<td width="20%">
			No Order
		</td>
		<td>
			<input type="text" name="noorder" size="20">
		</td>
	</tr>
	<tr>
		<td>
			ID Item
		</td>
		<td>
			<input type="text" name="iditem" value="<?php
				if(isset($_GET['iditem'])){
					echo $_GET['iditem'];
				}
			?>">
		</td>
	</tr>
	<tr>
		<td>
		</td>
		<td>
			<input type="submit" name="Order" size="20" value=" Order ">
			<br>			
			<br>			
		</td>
	</tr>
</form>

<form action="order_chart.php" method="post">
	<tr>
		<td>
			No Order
		</td>
		<td>
			<?php echo $noorder?><input type="hidden" name="noorder" value="<?php echo $noorder?>">
		</td>
	</tr>
	<tr>
		<td>
			ID Item
		</td>
		<td>
			<input type="text" name="iditem" value="<?php
				if(isset($_GET['iditem'])){
					echo $_GET['iditem'];
				}
			?>">
		</td>
	</tr>
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
			Satus
		</td>
		<td>
			New Order <input type="hidden" name="status" value="0">
		</td>
	</tr>
	<tr>
		<td>
		</td>
		<td>
			<input type="submit" name="Order" size="20" value=" Order ">
			<input type="reset" name="Reset" size="20" value=" Reset ">
		</td>
	</tr>
</form>
</table>
<?php
print_footer();
?>