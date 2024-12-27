<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$noorder = $_GET['noorder'];

print_header("");

?>
<h1 align="center" class="style2"> GALLERY GEDUNG </h1>
<table width="53%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="4" scope="row">FOTO GEDUNG </th>
  </tr>
  <tr>
    <th width="24%" scope="row"><div align="left"><img src="cimages/home.jpg" width="100" height="120" /></div></th>
    <td width="24%"><img src="cimages/SANY0140x.jpg" width="100" height="120"></td>
    <td width="24%"><img src="cimages/SANY0141x.jpg" width="100" height="120" /></td>
    <td width="44%"><img src="cimages/SANY0143x.jpg" width="100" height="120" /></td>
  </tr>
</table>
<p> </p>

<table width="53%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="4" scope="row"> </th>
  </tr>
  <tr>
    <th width="24%" scope="row"><div align="left"><img src="cimages/SANY0144x.jpg" width="100" height="120" /></div></th>
    <td width="24%"><img src="cimages/SANY0145x.jpg" width="100" height="120" /></td>
    <td width="24%"><img src="cimages/SANY0146x.jpg" width="100" height="120" /></td>
    <td width="44%"><img src="cimages/SANY0147x.jpg" width="100" height="120" /></td>
  </tr>
</table>
<p> </p>

<table width="53%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="4" scope="row"> </th>
  </tr>
  <tr>
    <th width="24%" scope="row"><div align="left"><img src="cimages/SANY0148x.jpg" width="100" height="120" /></div></th>
    <td width="24%"><img src="cimages/SANY0149x.jpg" width="100" height="120" /></td>
    <td width="24%"><img src="cimages/SANY0150x.jpg" width="100" height="120" /></td>
    <td width="44%"><img src="cimages/SANY0151x.jpg" width="100" height="120" /></td>
  </tr>
</table>

<p>&nbsp;</p>
<table width="53%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="4" scope="row"> </th>
  </tr>
  <tr>
    <th width="24%" scope="row"><div align="left"><img src="cimages/SANY0152x.jpg" width="100" height="120" /></div></th>
    <td width="24%"><img src="cimages/SANY0153x.jpg" width="100" height="120"></td>
    <td width="24%"><img src="cimages/SANY0161x.jpg" width="100" height="120" /></td>
    <td width="44%"><img src="cimages/SANY0162x.jpg" width="100" height="120" /></td>
  </tr>
</table>

<table width="53%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr><br>
	<td colspan="2" align="center">
	&nbsp;&nbsp;<a href="javascript:history.back();" class="tekslink1"><b>[ Back ]</b></a>
	</td>
</tr>
</table>

<?php
print_footer();
?>