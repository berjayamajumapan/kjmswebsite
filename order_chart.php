<?php
session_start();
if(!isset($_SESSION['noorder'])||!isset($_POST['noorder'])){
}

include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$iditem = "";
if(isset($_POST['iditem'])){
	$iditem = $_POST['iditem'];
}
elseif(isset($_GET['iditem'])){
	$iditem = $_GET['iditem'];
}

if(!isset($_SESSION['noorder'])){
	if(isset($_POST['noorder'])){
		$_SESSION['noorder'] = $_POST['noorder'];
	}
	else{
		header("Location: order_form.php?iditem=".$iditem."");
		$_SESSION['noorder'] = "";
		session_destroy();
	}
}

if(isset($_POST['Purchase'])){
	$field[1][1]="Status";
	$field[1][2]="1";
	$field[2][1]="";
	$field[2][2]="";
	generate_query("update",$field,"t_order","where NoOrder='".$_SESSION['noorder']."'","");
	header("Location: purchase_confirm.php");	
}

if(isset($_POST['UpdateOrder'])){
	$i = 0;
	while(list($key, $value)=each($_POST['jumlah'])){
		$i++;
		$field[1][1]="Jumlah";
		$field[1][2]=$value;
		$field[2][1]="";
		$field[2][2]="";
		generate_query("update",$field,"t_order_detail","where IDItem='".$_POST['iditem'.$i]."' and  NoOrder='".$_SESSION['noorder']."'","");
	}
}

if(isset($_GET['del'])){
	mysql_query("delete from t_order_detail where IDItem='".$_GET['del']."' and NoOrder='".$_SESSION['noorder']."'");
}

$result = mysql_query("select * from t_order where NoOrder='".$_SESSION['noorder']."'");
$row=mysql_fetch_row($result);
if($row[0]!=""){
	$nama = $row[1];
	$email = $row[2];
	$alamat = $row[3];
	$telpfax = $row[4];
	$status = $row[5];
}
else{
	if(isset($_POST['nama'])){
		$nama = $_POST['nama'];
		$email = $_POST['email'];
		$alamat = $_POST['alamat'];
		$telpfax = $_POST['telpfax'];
		$status = $_POST['status'];
	
		$field[1][1]="NoOrder";
		$field[1][2]="'".$_SESSION['noorder']."'";
		$field[2][1]="Nama";
		$field[2][2]="'".$_POST['nama']."'";
		$field[3][1]="Email";
		$field[3][2]="'".$_POST['email']."'";
		$field[4][1]="Alamat";
		$field[4][2]="'".$_POST['alamat']."'";
		$field[5][1]="TelpFax";
		$field[5][2]="'".$_POST['telpfax']."'";
		$field[6][1]="Status";
		$field[6][2]="'".$_POST['status']."'";
		$field[7][1]="";
		$field[7][2]="";
		generate_query("insert",$field,"t_order","","");
	}
	else{
		header("Location: order_form.php?err=1&iditem=".$iditem."");
		$_SESSION['noorder'] = "";
		session_destroy();
	}
}

print_header("");
?>
<table width="95%" align="center">
	<tr>
		<td>
			No Order
		</td>
		<td>
			<?php echo $_SESSION['noorder']?>
		</td>
	</tr>
	<tr>
		<td>
			Nama
		</td>
		<td>
			<?php echo $nama?>
		</td>
	</tr>
	<tr>
		<td>
			Email
		</td>
		<td>
			<?php echo $email?>
		</td>
	</tr>
	<tr>
		<td>
			Alamat
		</td>
		<td>
			<?php echo $alamat?>
		</td>
	</tr>
	<tr>
		<td>
			Telp / Fax
		</td>
		<td>
			<?php echo $telpfax?>
		</td>
	</tr>
	<tr>
		<td>
			Status
		</td>
		<td>
			<?php
			if($status=='0'){
				echo "New Order";
			}
			elseif($status=='1'){
				echo "Ordered";
			}
			elseif($status=='0'){
				echo "Buyed";
			}
			?>
		</td>
	</tr>
</table>
<hr size="1" width="95%" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Detail Order
<table border="0" width="95%" bgcolor="#336699" cellspacing="1" align="center">
<form action="" method="post">
	<tr bgcolor="#FAFAFA">
		<td>No Item</td>
		<td>Judul</td>
		<td>Design</td>
		<td>Jumlah</td>
		<td>Action</td>
	</tr>
<?php
$result = mysql_query("select * from t_order_detail 
					   inner join t_shop on t_order_detail.IDItem = t_shop.IDItem
					   where NoOrder='".$_SESSION['noorder']."'");
$addnewitem = true;
$i = 0;
while($row=mysql_fetch_row($result)){
	$i++;
	if($iditem==$row[1]){
		$addnewitem = false;
	}
?>
	<tr bgcolor="#FAFAFA">
		<td valign="top">
			<?php echo $row[1]?><input type="hidden" name="iditem<?php echo $i?>" value="<?php echo $row[1]?>">
		</td>
		<td valign="top">
			<?php echo $row[4]?>
		</td>
		<td valign="top">
			<img src="<?php echo $row[6]?>">
		</td>
		<td valign="top">
			<input type="text" name="jumlah[]" value="<?php echo $row[2]?>" size="5">
		</td>
		<td valign="top">
			<a href="order_chart.php?del=<?php echo $row[1]?>">Hapus</a>
		</td>
	</tr>
<?php
}

if($addnewitem==true){
	$result = mysql_query("select * from t_shop where IDItem='".$iditem."'");
	while($row=mysql_fetch_row($result)){
		$field[1][1]="NoOrder";
		$field[1][2]="'".$_SESSION['noorder']."'";
		$field[2][1]="IDItem";
		$field[2][2]="'".$iditem."'";
		$field[3][1]="Jumlah";
		$field[3][2]="1";
		$field[4][1]="";
		$field[4][2]="";
		generate_query("insert",$field,"t_order_detail","","");
?>
	<tr bgcolor="#FFFFFF">
		<td valign="top">
			<?php echo $row[0]?><input type="hidden" name="iditem" value="<?php echo $row[0]?>">
		</td>
		<td valign="top">
			<?php echo $row[1]?>
		</td>
		<td valign="top">
			<img src="<?php echo $row[3]?>">
		</td>
		<td valign="top">
			<input type="text" name="jumlah[]" value="1" size="5">
		</td>
		<td valign="top">
			<a href="order_chart.php?del=<?php echo $row[0]?>">Hapus</a>
		</td>
	</tr>
<?php
	}
}
?>
</table>
<table width="95%" align="center">
	<tr>
		<td align="center">
			<input type="submit" name="UpdateOrder" value="Update Order Detail">&nbsp;&nbsp;
			<input type="submit" name="Purchase" value="Purchase">
		</td>
	</tr>
	<tr>
		<td align="center">
			<a href="shop.php">Shop</a>
		</td>
	</tr>
</form>
</table>
<?php
print_footer();
?>