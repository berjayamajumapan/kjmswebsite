<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$noorder = $_GET['noorder'];

print_header("");

?>
<h1 align="center" class="style2"> WELDING EQUIPMENTS</h1>
<table width="53%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="4" scope="row"> Kabel Las Lincoln </th>
  </tr>
  <tr>
    <th width="24%" scope="row">
      </a>
    <div align="center"><img src="cimages/kawatlincoln.jpg" width="700" height="700" /></div></th>
  
  </tr>
</table>
<p></p>

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