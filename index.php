<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/query_function.php";

print_header("home");

?>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {font-size: 24}
-->
</style>


		<table width="99%" border="0" align="center" cellpadding="5" cellspacing="0">

			<tr>
				<td width="21%" valign="top">
				  <p>
				    <?php
				$result=mysql_query("SELECT * FROM t_tematis WHERE Publish='1'");
				$row=mysql_fetch_row($result);
				if($row[0]!=""){
				?>
				    
			        <?php
				}
				?>
	              </p>
				  
					 
			  <style type="text/css">
        *{margin:0; padding:0;}
        .container {margin:auto; width: 400px}
        header {background-color: #39ce22; text-align: center}
        article {background-color: #11e5a5; text-align: center; padding: 20px 0;}
    </style>
			  <div class="container">
             
    </div>
			  </td>
	
</tr>


</table>

        <p>
  <!-- YM -->
          
  <div align ="left" cellspacing=10>
  <marquee class="kecil01a" id="marquee" onmouseover="marquee.stop();" onmouseout="marquee.start();" truespeed="" scrollamount="5" scrolldelay="200" direction="left","right"><a href="https://www.whatsapp.com/"><img width ="70" height ="60"border=0 src="images/wa.gif"</a>
  <a href="https://line.me/en-US/"><img width ="70" height ="60"border=0 src="images/line.gif"</a>
  <a href="https://twitter.com/"><img width ="70" height ="60"border=0 src="images/twitter.gif"</a>
  <a href="https://facebook.com/"><img width ="70" height ="60"border=0 src="images/facebook.gif"</a>
  <a href="https://www.instagram.com/"><img width ="70" height ="60"border=0 src="images/instagram.gif"</a>
  <a href="https://messenger.yahoo.com/"><img width ="70" height ="60"border=0 src="images/ym.gif"</a>
  <a href="http://www.berjayamajumapan.com"><img width ="70" height ="60"border=0 src="images/email.gif"</a>
     </div>
  </marquee>
  
  <!-- end -->
</p>
<table width="99%" align="center">
	<tr>
		<td align="right" colspan="3">&nbsp;&nbsp;		</td>
	</tr>
	<tr>
		<td colspan="3">
			<hr size="1" color="#87C6EC" width="97%">
		</td>
	</tr>
	<tr>
		<td class="teksjudul_ijo" height="40" colspan="2">
			<img src="images/product_terbaru.gif">
			<?php
			$result = mysql_query("select * from tr_buku 
								   left join tr_format on tr_buku.IDFormat=tr_format.IDFormat
								   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
								   where New='1' and Publish='1' order by IDBuku asc  limit 0,3 ") or die(mysql_error());
			?>
		</td>
		<td align="right" class="tekslink">
		</td>
	</tr>
	  <tr height="160">
		<?php
		while($row=mysql_fetch_row($result)){
		?>
		<td class="" width="30%">
			<table width="100%" height="100%" cellpadding="5">
			  <tr>
				<td valign="top" align="center"> 
					<a href="product_detail.php?ID=<?php echo $row[0]?>"><img src="bookimages/closed jongkok2.jpg" width="115" height="141" /></a>
					<div class="tekshitam">
						"<?php echo $row[1]?>"
					</div>
					<div class="tekshitam">by
						<a href="detail_pengarang.php?ID=<?php echo $row[23]?>" class="tekslink"><?php echo $row[24]?></a>
					</div>
					<div class="tekslink1">
						<?php echo $row[22]?>
					</div>
					<div class="teksorange"></div>
		  </table>
		</td>
		<?php
		if($row=mysql_fetch_row($result)){
		?>
		<td class="" width="30%">
			<table width="100%" height="100%" cellpadding="5">
			  <tr>
				<td valign="top" align="center"><a href="product_detail.php?ID=<?php echo $row[0]?>"><img src="bookimages/afursifon1.jpg"<?php echo $row[15]?>" border="0" alt="Klik untuk melihat detail product" width="105" height="140" class="shadow1" /></a>
				  <div class="tekshitam">
						"<?php echo $row[1]?>"				  </div>
					<div class="tekshitam">by
						<a href="detail_pengarang.php?ID=<?php echo $row[23]?>" class="tekslink"><?php echo $row[24]?></a>					</div>
					<div class="tekslink1">
						<?php echo $row[22]?>					</div>
					<div class="teksorange"></div>			</tr>
		  </table>
		</td>
		<?php
		}
		
		if($row=mysql_fetch_row($result)){
		?>
		<td class="" width="30%">
			<table width="100%" height="100%" cellpadding="5">
			  <tr>
				<td valign="top" align="center"> 
					<a href="product_detail.php?ID=<?php echo $row[0]?>"><img src="bookimages/afursifon.jpg"<?php echo $row[15]?>" border="0" alt="Klik untuk melihat detail product" width="105" height="140" class="shadow1"></a>
					<div class="tekshitam">
						"<?php echo $row[1]?>"
					</div>
					<div class="tekshitam">by
						<a href="detail_pengarang.php?ID=<?php echo $row[23]?>" class="tekslink"><?php echo $row[24]?></a>
					</div>
					<div class="tekslink1">
						<?php echo $row[22]?>
					</div>
					<div class="teksorange"></div>
		  </table>
		</td>
		<?php
			}
		?>
	  </tr>
	  <?php
		}
	  ?>
	<tr>
		<td colspan="3" align="right">
			<a href="product_list.php?kat=cool" class="tekslink1">[ <span class="style1">= Next =&gt;</span> ] ....</a><a href="product_list.php?kat=new" class="tekslink1"></a>&nbsp;&nbsp;		</td>
	</tr>


	<tr>
		<td height="40" colspan="2" bordercolor="#F0F0F0" class="teksjudul_ijo style2">
			<img src="images/product_andalan.gif" width="400" height="60">
			<?php
			$result = mysql_query("select * from tr_buku 
								   left join tr_format on tr_buku.IDFormat=tr_format.IDFormat
								   left join tr_pengarang on tr_buku.IDPengarang=tr_pengarang.IDPengarang
								   where Cool='1' and Publish='1' order by IDBuku asc limit 0, 3") or die(mysql_error());
			?>		</td>
		<td align="right" class="tekslink">
		</td>
	</tr>
	  <tr height="160">
		<?php
		while($row=mysql_fetch_row($result)){
		?>
		<td class="" width="30%">
			<table width="100%" height="100%" cellpadding="5">
			  <tr>
				<td valign="top" align="center"> 
					<a href="product_detail.php?ID=<?php echo $row[0]?>"><img src="images/katalogsemen.jpg"<?php echo $row[15]?>" border="0" alt="Klik untuk melihat detail product" width="250" height="200" class="shadow1"></a>
					<div class="tekshitam">
						"<?php echo $row[1]?>"					</div>
					<div class="tekshitam">by
                    <a href="detail_pengarang.php?ID=<?php echo $row[23]?>" class="tekslink"><?php echo $row[24]?></a> </div>
					<div class="tekslink1">
						<?php echo $row[22]?>					</div>
					<div class="teksorange"></div>
		          <tr>
		        <td valign="top" align="center">
		          </table>
		</td>
		<?php
		if($row=mysql_fetch_row($result)){
		?>
		<td class="" width="30%">
			<table width="100%" height="100%" cellpadding="5">
			  <tr>
				<td valign="top" align="center"><a href="product_detail.php?ID=<?php echo $row[0]?>"><img src="bookimages/katalogwiremesh.jpg"<?php echo $row[15]?>" border="0" alt="Klik untuk melihat detail product" width="250" height="200" class="shadow1" /></a>
				  <div class="tekshitam">
						"<?php echo $row[1]?>"				  </div>
					<div class="tekshitam">by
						<a href="detail_pengarang.php?ID=<?php echo $row[23]?>" class="tekslink"><?php echo $row[24]?></a>					</div>
					<div class="tekslink1">
						<?php echo $row[22]?>					</div>
				<div class="teksorange"></div>			</tr>
		  </table>
		</td>
		<?php
		}
		
		if($row=mysql_fetch_row($result)){
		?>
		<td class="" width="30%">
			<table width="100%" height="100%" cellpadding="5">
			  <tr>
				<td valign="top" align="center"> 
					<a href="product_detail.php?ID=<?php echo $row[0]?>"><img src="images/katalogperwira.jpg"<?php echo $row[15]?>" border="0" alt="Klik untuk melihat detail product" width="250" height="200" class="shadow1"></a>
					<div class="tekshitam">
						"<?php echo $row[1]?>"
					</div>
					<div class="tekshitam">by
						<a href="detail_pengarang.php?ID=<?php echo $row[23]?>" class="tekslink"><?php echo $row[24]?></a>
					</div>
					<div class="tekslink1">
						<?php echo $row[22]?>
					</div>
					<div class="teksorange"></div>
		  </table>
		</td>
		<?php
			}
		?>
	  </tr>
	  <?php
		}
	  ?>
	<tr>
		<td colspan="3" align="right">
			<a href="product_list.php?kat=cool" class="tekslink1">[ <span class="style1">= Next =&gt;</span> ] ....</a>&nbsp;&nbsp;		</td>
	</tr>
</table>
<BR>
<!--
<hr size="1" color="#87C6EC" width="95%">
<BR>
<?php
if(!isset($_SESSION['id'])){
?>

<table width="95%" align="center">
	<tr>
	<!--
		<td colspan="2" class="teksmerah">
			<h2>Welcome, Please Sign In</h2>
		</td>
	</tr>
	<tr>
		<td class="teksjudul" width="50%">
			Not Registered
		</td>
		<td class="teksjudul" align="left">
			Registered Customer
		</td>
	</tr>
	<tr>
	<td class="" valign="top" colspan="2">
			<table cellspacing="1" bgcolor="#FF9966" width="100%" height="100%">
				<tr>
					<td bgcolor="#ffffff" valign="top" width="50%">
						<table width="100%" height="100%" cellpadding="5">
							<tr>
								<td valign="top" class="tekshitamkecil">														
									I am a new customer.<br>
									By creating an account with  
									<STRONG><SPAN style="FONT-SIZE: 18pt; COLOR: #a50021; FONT-FAMILY: 'Comic Sans MS'; mso-bidi-font-size: 28.0pt; mso-bidi-font-family: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> Product </SPAN><SPAN style="FONT-SIZE: 18pt; COLOR: #ff6633; FONT-FAMILY: 'Times New Roman'; mso-bidi-font-size: 28.0pt; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">135</SPAN></STRONG>
									<STRONG><SPAN style="FONT-SIZE: 9pt; COLOR: #ff6633; FONT-FAMILY: Arial; mso-bidi-font-size: 11.0pt; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Toko Samudra Mas Kalimantan</SPAN><SPAN style="FONT-SIZE: 11pt; COLOR: #ff6633; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> </SPAN></STRONG><I style="mso-bidi-font-style: normal"><SPAN style="FONT-SIZE: 10pt; COLOR: #ff6633; FONT-FAMILY: Forte; mso-bidi-font-size: 14.0pt; mso-bidi-font-family: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><FONT face="Times New Roman">online</FONT></SPAN></I>															 ,
									you will be able to shop faster, get promo discount, 
									and receive free newsletter and info on new arrival items.															
							</tr>
							<tr>
								<td valign="bottom" align="right">
									<a href="sign_up.php"><img  src="images/button_continue.gif" border="0"></a>
								</td>
							</tr>
						</table>
					</td>
					<td bgcolor="#ffffff" height="100%">
						<table width="100%" cellpadding="5">
							<form action="confirm_login.php" method="post">
							<tr>
								<td width="10%" valign="top" colspan="2" class="tekshitamkecil">
									I am a returning customer.
								</td>
							</tr>
							<tr>
								<td width="10%" valign="top" align="right" class="tekshitamkecil">
									Email :
								</td>
								<td>
									<input type="text" name="id" class="tekshitamkecil">
								</td>
							</tr>
							<tr>
								<td width="10%" valign="top" align="right" class="tekshitamkecil">
									Password :
								</td>
								<td>
									<input type="password" name="pass" class="tekshitamkecil">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="password_forgotten.php" class="tekshitamkecil">Password forgotten? Click here.</a>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="right" valign="bottom">
									<input type="image" name="login" src="images/button_login.gif" value=" GO ! ">
								</td>
							</tr>
							</form>
						</table>
					</td>
				</tr>
			</table>
	  </td>
	</tr>
</table>
-->
<?php
}
?>
<?php
print_footer();
?>