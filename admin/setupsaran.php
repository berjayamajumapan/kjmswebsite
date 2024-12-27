<?php
session_start();
include "../connection/koneksi.php";
include "fungsi.php";

checklanjut();

if(isset($_POST['pub'])){
	$field[1][1]="fs_publish";
	$field[1][2]="'n'";
	generate_query("update",$field,"t_saran","","");
	while(list($key, $value)=each($_POST['publish'])){
		$field[1][1]="fs_publish";
		$field[1][2]="'y'";
		generate_query("update",$field,"t_saran","where fs_no='".$value."'","");
	}
}

if(isset($_GET['hapus'])){
	if($_GET['no']!=""){
		generate_query("delete","","t_berita","where fs_no='".$_GET['no']."'","");
	}
	if(isset($_GET['no'])){
		$_GET['no']="";
	}
}

if(isset($_GET['edit'])){
	if($_GET['no']!=""){
		$result1= mysql_query("select * from t_berita where fs_no='".$_GET['no']."'");
		$row1=mysql_fetch_row($result1);
	}
}

$result = mysql_query("select * from t_saran order by fs_no desc");
?>
<html>
<head>
<title>Administrator :: BRSU Tabanan</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../newstyle.css" rel="stylesheet" type="text/css">
<style fprolloverstyle>
	A:hover {text-decoration: underline; color: #333333}
</style>
</head>

<body bgcolor="#E7E9EB" topmargin="0" bottommargin="0">
<table align="center" width="80%" cellspacing="0" height="100%">
	<tr bgcolor="#333333">
		<td height="90" class="judul" align="center">
			<font size="+2" color="#FFFFFF">Administrator BRSU Tabanan</font>
		</td>
	</tr>
	<tr bgcolor="#333333">
		<td height="10" align="right" class="judul"  bgcolor="#FF9966">
			<font color="#333333">
			Login sebagai : <?php echo $_SESSION['id']?>/<?php echo $_SESSION['kat']?> 
			[<a href="logout.php?logout=1"	>Logout</a>]
			</font>
		</td>
	</tr>
	<tr bgcolor="#FDFDFD">
		<td valign="top" class="tekshitam">
			<table align="center" width="100%">
				<tr>
					<td align="center" class="tekshitam">
						<a href="setupimages.php" class="link">Setup Berita</a> |
						<a href="setupnew.php" class="link">Setup New</a> |
						<a href="setupiklan.php" class="link">Setup Iklan</a> |
						<a href="setupgeneral.php" class="link">Setup General</a> |
						<a href="setuplink.php" class="link">Setup Link</a> |
						<a href="setuplayanan.php" class="link">Setup Layanan</a> |<br>
						<a href="setupdokter.php" class="link">Setup Dokter</a> |
						<a href="setupjadwal.php" class="link">Setup Jadwal Dokter</a> |
						<a href="setupsaran.php" class="link">Setup Saran</a> |
						<a href="setuppoling.php" class="link">Setup Poling</a> |
						<?php
						if($_SESSION['kat']=="super"){
						?>
						<a href="adminlogin.php" class="link">Login Admin</a>
						<?php
						}
						?>
						<br>
						<br>
					</td>
				</tr>
				<tr>
					<td class="judulbiru">
						<img src="../images/panah_04.gif" align="absmiddle"> Setup Saran:
					</td>
				</tr>
				<tr>
					<td>
						
						<br>
						<table  bgcolor="#333333" cellspacing="1" border="0">
							<tr class="judul" bgcolor="#FF9966">
								<td>
									No
								</td>
								<td>
									Tanggal/Jam
								</td>
								<td>
									Nama
								</td>
								<td>
									Email/Homepage
								</td>
								<td>
									Saran
								</td>
								<td>
									Publish
								</td>
							</tr>
							<form action="" method="post" enctype="multipart/form-data">
							<?php
							while($row=mysql_fetch_row($result)){
							?>
							<tr bgcolor="#FDFDFD" class="tekshitam">
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
									<?php echo $row[3]?>, <?php echo $row[4]?> 		
								</td>
								<td>
									<?php echo $row[5]?>		
								</td>
								<td>
									<input type="checkbox" name="publish[]" value="<?php echo $row[0]?>" <?php
									if($row[6]=='y'){
										echo "checked";
									}
									?>>
								</td>
							</tr>
							<?php
							}
							?>
							<tr bgcolor="#FDFDFD" class="tekshitam">
								<td>
								</td>
								<td>
								</td>
								<td>
								</td>
								<td>
								</td>
								<td>
								</td>
								<td>
									<input type="submit" name="pub" class="tekshitam" value="publish">
								</td>
							</tr>
							</form>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr bgcolor="#333333">
		<td height="20">
		</td>
	</tr>
</table>
</body>
</html>
