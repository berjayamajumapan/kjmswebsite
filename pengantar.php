<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$noorder = $_GET['noorder'];

print_header("");

?>
<br>
<table width="90%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_hasil.gif" align="absmiddle"> Kata Pengantar</font>
		</td>
		<td align="right">
		<a href="keranjang.php"  class="tekslink">
		
		
		</td>
	</tr>
		<tr>
		<td colspan="2" class="teksjudul">
		<div align="justify">
		<font color="#0000FF" size="2">
		<div align="justify">PT. SAMUDRA MAS KALIMANTAN
		<p>PT. Samudra Mas  Kalimantan  adalah&nbsp; supplier bahan bangun terbesar di  Kotawaringin Timur, sudah berdiri sejak tahun 2000 dan didukung dengan  perusahaan distributor&nbsp; juga modern  market&nbsp; bahan bangunan,&nbsp; samudra mas kalimantan  mempunyai visi menjadi  patner bisnis andalan bagi setiap customernya.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
Didukung dengan jumlah  armada pick up,&nbsp;&nbsp;&nbsp; truck engkel,&nbsp;&nbsp;&nbsp; dum truck juga tosa dengan jumlah yang  tidak sedikit,&nbsp;&nbsp; serta dihandle oleh 9  orang sales yang sudah mempunyai pengalaman untuk menghandle perkebunan,  perusahaan jasa konstruksi,&nbsp; juga  developer.
		<p>Toko Samudra Mas  menyediakan semua jenis bahan bangunan seperti besi beton berbagai ukuran dan  spek,&nbsp; pipa semua jenis, semen,&nbsp; batu split,&nbsp;  alat alat perkebunan,&nbsp; perlengkpan  las, alat safety, perlengkapan alat pemadam kebakaran, mesin mesin semua jenis dan type,  bermacam macam merk cat seperti nippon paint, avian dll,alat alat pertukangan,  alat alat untuk angkat dan masih banyak lagi.<br />
		<br>Hanya di satu tempat, anda sudah  bisa mendapatkan semua material bahan bangunan yang di perlukan dengan berbagai  macam pilihan yang sesuai dengan keperluan anda, dengan harga yang dapat  diandalkan, toko samudra mas merupakan pilihan yang sangat tepat sebagai mitra  bisnis anda.		</br>
		</br>
          <p><br>
		  Yuliana Prayogo
          <br>
		  Direktur</br>
		  </td>		
	</tr>
<tr>
	<td colspan="2" align="center">
	&nbsp;&nbsp;<a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>
	</td>
</tr>
</table>

<?php
print_footer();
?>