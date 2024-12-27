<?php
session_start();
include "viewer.php";
include "include/connection.php";
include("include/manipulation_function.php");

print_header();
$kat="";
$kat1="";
$searchkat="";
$keyword="";
init_print_nav(10);
if(isset($_GET['hal'])){
	$hal = $_GET['hal'];
}
else{
	$hal = 1;
}

?>
<!--BEGIN : ISI TENGAH-->
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/laporan.gif" align="absmiddle"> Search Result</font>
		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink">
		<?php
			$result=mysql_query("select count(ID) from tr_keranjang where ID='".$_SESSION['id']."' and status='0' ");
			$row=mysql_fetch_row($result);
			echo $row[0];
		?>
			product pada reservasi Anda <img src="images/icon_keranjang.gif" align="absmiddle" border="0"></a>
		</td>
	</tr>
</table>
<hr size="1" color="#87C6EC" width="95%" align="center">
 <table width="97%" align="center">
  <tr>
	<td class="title" height="40" colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp;Untuk Pencarian <?php
		
		if(isset($_GET['keyword'])){ //untuk kategori tertentu
				echo $_GET['searchkategory'].", '".$_GET['keyword']."'";
				$searchkat=$_GET['searchkategory'];
				$keyword=$_GET['keyword'];
				if($searchkat=="Bersasarkan Judul"){
					$result = mysql_query("select * from tr_buku 
										   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
										   left join tr_kategori_buku on tr_buku.IDKategoriBuku=tr_kategori_buku.IDKategoriBuku
										   left join tr_format on tr_buku.IDFormat=tr_format.IDFormat
										   where Judul like '%".$keyword."%' and Publish='1' order by IDBuku asc  $limit ") or die(mysql_error());
				}
				elseif($searchkat=="Berdasarkan Kategori"){
					$result = mysql_query("select * from tr_buku 
										   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
										   left join tr_kategori_buku on tr_buku.IDKategoriBuku=tr_kategori_buku.IDKategoriBuku
										   left join tr_format on tr_buku.IDFormat=tr_format.IDFormat
										   where KategoriBuku like '%".$keyword."%' and Publish='1' order by IDBuku asc  $limit ") or die(mysql_error());
				}										 
				elseif($searchkat=="Berdasarkan Penulis"){
					$result = mysql_query("select * from tr_buku 
										   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
										   left join tr_kategori_buku on tr_buku.IDKategoriBuku=tr_kategori_buku.IDKategoriBuku
										   left join tr_format on tr_buku.IDFormat=tr_format.IDFormat
										   where NamaPengarang like '%".$keyword."%' and Publish='1' order by IDBuku asc  $limit ") or die(mysql_error());
				}
				
		}
	
		?>
	</td>
	<td align="right" class="tekslink"> </td>
  </tr>
  <tr height="160">
	<td class="" width="100%" colspan="2">
		<table width="85%" cellpadding="5" align="left">
		<?php
		while($row=mysql_fetch_row($result)){
		?>
		  <tr>
			<td valign="top" align="center" width="100"> 
				<a href="Product_detail.php?ID=<?php echo $row[0]?>"><img src="<?php echo $row[15]?>" width="80" height="100" class="shadow1" border="0" alt="Klik untuk melihat detail product"></a>
			</td>
			<td class="tekshitam" valign="top">
					<?php echo $row[1]?><br> <a href="detail_pengarang.php?ID=<?php echo $row[21]?>" class="tekslink"><?php echo $row[22]?></a> <br> <?php echo $row[25]?>
					<div class="teksorange"><br>
					<strike>Rp <?php echo $row[13]?>,-</strike><br>Rp <?php echo $row[14]?>,- 
					</div>
			</td>
			<td align="right" width="100" valign="bottom">
				<a href="keranjang.php?ID=<?php echo $row[0]?>" class="tekslink">&raquo; Order <img src="images/icon_keranjang.gif" border="0" align="middle"></a>
			</td>
		</tr>
		<tr><td colspan="3"><hr size="1" color="#CCCCCC"></td></tr>
	  <?php
		}
	  ?>
	  </table>
	</td>
  </tr>
  <tr>
	<td colspan="3" align="center" class="tekslink1"> 
		<?php
			if(isset($_GET['search'])){ //untuk kategori tertentu
			if($searchkat=="Books by Titles"){
				print_nav("search_result.php?keyword=".$keyword."&searchkategory=".$searchkat."&search=+Search+", "tr_buku", "IDBuku", " Judul like '%".$keyword."%' and Publish='1' ", " ORDER BY IDBuku ASC");
			}
			elseif($searchkat=="Books by Kategory"){
				print_nav("search_result.php?keyword=".$keyword."&searchkategory=".$searchkat."&search=+Search+", "tr_buku 			   
			    left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
			    left join tr_kategori_buku on tr_buku.IDKategoriBuku=tr_kategori_buku.IDKategoriBuku ", "IDBuku", " KategoriBuku like '%".$keyword."%' and Publish='1' ", " ORDER BY IDBuku ASC");
			}										
			elseif($searchkat=="Books by Author"){
				print_nav("search_result.php?keyword=".$keyword."&searchkategory=".$searchkat."&search=+Search+", "tr_buku 
			    left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
			    left join tr_kategori_buku on tr_buku.IDKategoriBuku=tr_kategori_buku.IDKategoriBuku ", "IDBuku", " NamaPengarang like '%".$keyword."%' and Publish='1' ", " ORDER BY IDBuku ASC");
			}
		}
		?>
	</td>
  </tr>
</table>
						

<?php
print_footer();
?>