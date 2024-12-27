<?php
include "viewer.php";
include "include/connection.php";
include "include/query_function.php";

$ulang=false;

if(isset($_POST['txtEmail'])){ //proses
	
	//cek alamat email yang sudah terpakai
	$result = mysql_query("select 1 from tr_anggota where ID='".$_POST['txtEmail']."'");
	$row=mysql_fetch_row($result);
	
	if($row[0]=="1"){
		$ulang=true;
		echo "<SCRIPT LANGUAGE = 'JavaScript'>";
	    echo "alert ('Alamat Email sudah dipakai! Silahkan isi alamat email baru!');";
		echo "</SCRIPT>";
	}
	else{
		
		$field[1][1]="ID";
		$field[1][2]="'".$_POST['txtEmail']."'";
		$field[2][1]="Password";
		$field[2][2]="'".$_POST['txtPassword']."'";
		$field[3][1]="JK";
		$field[3][2]="'".$_POST['txtJK']."'";
		$field[4][1]="FirstName";
		$field[4][2]="'".$_POST['txtFirstName']."'";
		$field[5][1]="LastName";
		$field[5][2]="'".$_POST['txtLastName']."'";
		$field[6][1]="TanggalLahir";
		$field[6][2]="'".$_POST['txtTanggalLahir']."'";
		$field[7][1]="Email";
		$field[7][2]="'".$_POST['txtEmail']."'";
		$field[8][1]="Jalan";
		$field[8][2]="'".$_POST['txtJalan']."'";
		$field[9][1]="Suburb";
		$field[9][2]="'".$_POST['txtSuburb']."'";
		$field[10][1]="KodePos";
		$field[10][2]="'".$_POST['txtKodePos']."'";
		$field[11][1]="Kota";
		$field[11][2]="'".$_POST['txtKota']."'";
		$field[12][1]="Zone";
		$field[12][2]="'".$_POST['txtZone']."'";
		$field[13][1]="Negara";
		$field[13][2]="'".$_POST['txtNegara']."'";
		$field[14][1]="Telepon";
		$field[14][2]="'".$_POST['txtTelepon']."'";
		$field[15][1]="Fax";
		$field[15][2]="'".$_POST['txtFax']."'";
		$field[16][1]="NewArrival";
		$field[16][2]="'".$_POST['txtNewArrival']."'";
		$field[17][1]="Newsletter";
		$field[17][2]="'".$_POST['txtNewsletter']."'";
		$field[18][1]="";
		$field[18][2]="";
		generate_query("insert",$field,"tr_anggota","","");
		
		header("Location:confirm_true.php");
		
	}
}

print_header("login");
?>
<table width="99%" align="center">
	<tr>
		<td class="teksjudul" height="40">
			<font size="3"><img src="images/icon_siswa.gif" align="absmiddle"> Registrasi Member </font>		</td>
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
<hr size="1" color="#87C6EC" width="95%">
						<!--BEGIN : ISI TENGAH-->
						<table width="99%" align="center">
							<tr>
								<td class="title" height="40">
									&nbsp;&nbsp;&raquo;Informasi Member
								</td>
								<td align="right" class="tekslink">
								</td>
							</tr>
							<tr height="160">
								<td class="" colspan="2">
									<form method="post" action="" NAME = "fmForm" onSubmit = "return evKirim()" > 
										<table width="100%" cellpadding="2" class="tekshitam">
											<tr>
												<td class="teksjudul" width="30%" align="left" valign="top">
													Personal Details  
												</td>
												<td class="teksmerah" align="right">
													<font color="#FF0000">*) Wajib diisi</font>
												</td>
											</tr>
											<tr>
												<td width="100%" colspan="2" class="tekshitamkecil">
													<table cellspacing="1" bgcolor="#FF9966" width="100%">
														<tr>
															<td bgcolor="#ffffff" valign="top" width="100%">
																<table width="100%" cellpadding="5" class="tekshitamkecil">
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top" width="30%">
																			Jenis Kelamin
																		</td>
																		<td class="tekshitamkecil">
																			<input type="radio" value="0" NAME = "txtJK" <?php
																				if($ulang==true){
																					if($_POST['txtJK']=="0"){
																						echo "checked";
																					}
																				}
																			?>> Male
																			<input type="radio" value="1" NAME = "txtJK" <?php
																				if($ulang==true){
																					if($_POST['txtJK']=="1"){
																						echo "checked";
																					}
																				}
																			?>> FeMale 
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																		<tr>
																			<td class="tekshitamkecil"  align="left" valign="top">
																				Nama Depan
																			</td>
																			<td>
																				<input type="text" class="tekshitamkecil" size="50" NAME = "txtFirstName" value="<?php
																					if($ulang==true){
																						if(isset($_POST['txtFirstName'])){
																							echo $_POST['txtFirstName'];
																						}
																					}
																				?>">
																				<font color="#FF0000">*</font>
																			</td>
																		</tr>
																		<tr>
																			<td class="tekshitamkecil"  align="left" valign="top">
																				Nama Belakang
																			</td>
																			<td>
																				<input type="text" class="tekshitamkecil" size="50" NAME = "txtLastName" value="<?php
																					if($ulang==true){
																						if(isset($_POST['txtLastName'])){
																							echo $_POST['txtLastName'];
																						}
																					}
																				?>">
																				<font color="#FF0000">*</font>
																			</td>
																		</tr>
																		<tr>
																			<td class="tekshitamkecil"  align="left" valign="top">
																				Tanggal Lahir
																			</td>
																			<td class="tekshitamkecil">
																				<input type="text" class="tekshitamkecil" size="20" NAME = "txtTanggalLahir" value="<?php
																					if($ulang==true){
																						if(isset($_POST['txtTanggalLahir'])){
																							echo $_POST['txtTanggalLahir'];
																						}
																					}
																				?>">
																				<font color="#FF0000">*</font>
																				(eg. 01/05/1970)
																			</td>
																		</tr>
																		<tr>
																			<td class="tekshitamkecil"  align="left" valign="top">
																				E-Mail <font color="#FF0000">(untuk Login ID)</font>
																			</td>
																			<td>
																				<input type="text" class="tekshitamkecil" size="50" NAME = "txtEmail" value="<?php
																					if($ulang==true){
																						if(isset($_POST['txtEmail'])){
																							echo $_POST['txtEmail'];
																						}
																					}
																				?>"><font color="#FF0000">*</font>
																			</td>
																		</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td class="teksjudul" width="30%" align="left" valign="top">
													<br>Alamat
												</td>
												<td class="teksmerah" align="right">
												</td>
											</tr>
											<tr>
												<td width="100%" colspan="2">
													<table cellspacing="1" bgcolor="#FF9966" width="100%">
														<tr>
															<td bgcolor="#ffffff" valign="top" width="100%">
																<table width="100%" cellpadding="5" class="tekshitamkecil">
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Jalan, No
																		</td>
																		<td>
																			<input type="text" class="tekshitamkecil" size="50" NAME = "txtJalan" value="<?php
																				if($ulang==true){
																					if(isset($_POST['txtJalan'])){
																						echo $_POST['txtJalan'];
																					}
																				}
																			?>">
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Kawasan / Daerah
																		</td>
																		<td>
																			<input type="text" class="tekshitamkecil" size="30" NAME = "txtSuburb" value="<?php
																				if($ulang==true){
																					if(isset($_POST['txtSuburb'])){
																						echo $_POST['txtSuburb'];
																					}
																				}
																			?>">
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Kode Pos
																		</td>
																		<td class="tekshitamkecil">
																			<input type="text" class="tekshitamkecil" size="20" NAME = "txtKodePos" value="<?php
																				if($ulang==true){
																					if(isset($_POST['txtKodePos'])){
																						echo $_POST['txtKodePos'];
																					}
																				}
																			?>">
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Kota
																		</td>
																		<td>
																			<input type="text" class="tekshitamkecil" size="30" NAME = "txtKota" value="<?php
																				if($ulang==true){
																					if(isset($_POST['txtKota'])){
																						echo $_POST['txtKota'];
																					}
																				}
																			?>">
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																	<!--
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Zona
																		</td>
																		<td>
																			<select class="tekshitamkecil" NAME = "txtZone">
																				<option value=" " <?php
																				if($ulang==true){
																					if($_POST['txtZone']==""){
																						echo "selected";
																					}
																				}
																			?>>[select option]</option>
																			</select>
																			<font color="#FF0000"> </font>
																		</td>
																	</tr>
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Negara
																		</td>
																		<td>
																			<select class="tekshitamkecil" NAME = "txtNegara">
																				<option value=" " <?php
																				if($ulang==true){
																					if($_POST['txtNegara']==""){
																						echo "selected";
																					}
																				}
																			?>>[select option]</option>
																			<option value="US">UNITED STATES</option>
																			<option value="CA">CANADA</option>
																			<option value="AF">Afghanistan</option>
																			<option value="AL">Albania</option>
																			<option value="DZ">Algeria</option>
																			<option value="AS">American Samoa</option>
																			<option value="AD">Andorra</option>
																			<option value="AO">Angola</option>
																			<option value="AI">Anguilla</option>
																			<option value="AQ">Antarctica</option>
																			<option value="AG">Antigua and Barbuda</option>
																			<option value="AR">Argentina</option>
																			<option value="AM">Armenia</option>
																			<option value="AW">Aruba</option>
																			<option value="AU">Australia</option>
																			<option value="AT">Austria</option>
																			<option value="AZ">Azerbaijan</option>
																			<option value="BS">Bahamas</option>
																			<option value="BH">Bahrain</option>
																			<option value="BD">Bangladesh</option>
																			<option value="BB">Barbados</option>
																			<option value="BY">Belarus</option>
																			<option value="BE">Belgium</option>
																			<option value="BZ">Belize</option>
																			<option value="BJ">Benin</option>
																			<option value="BM">Bermuda</option>
																			<option value="BT">Bhutan</option>
																			<option value="BO">Bolivia</option>
																			<option value="BA">Bosnia-Herzegovina</option>
																			<option value="BW">Botswana</option>
																			<option value="BV">Bouvet Island</option>
																			<option value="BR">Brazil</option>
																			<option value="IO">British Indian Ocean Territory</option>
																			<option value="BN">Brunei Darussalam</option>
																			<option value="BG">Bulgaria</option>
																			<option value="BF">Burkina Faso</option>
																			<option value="BI">Burundi</option>
																			<option value="KH">Cambodia</option>
																			<option value="CM">Cameroon</option>
																			<option value="CV">Cape Verde</option>
																			<option value="KY">Cayman Islands</option>
																			<option value="CF">Central African Republic</option>
																			<option value="TD">Chad</option>
																			<option value="CL">Chile</option>
																			<option value="CN">China</option>
																			<option value="CX">Christmas Island</option>
																			<option value="CC">Cocos (Keeling) Islands</option>
																			<option value="CO">Colombia</option>
																			<option value="KM">Comoros</option>
																			<option value="CG">Congo</option>
																			<option value="CD">Congo (Democratic Republic)</option>
																			<option value="CK">Cook Islands</option>
																			<option value="CR">Costa Rica</option>
																			<option value="HR">Croatia</option>
																			<option value="CU">Cuba</option>
																			<option value="CY">Cyprus</option>
																			<option value="CZ">Czech Republic</option>
																			<option value="DK">Denmark</option>
																			<option value="DJ">Djibouti</option>
																			<option value="DM">Dominica</option>
																			<option value="DO">Dominican Republic</option>
																			<option value="TP">East Timor</option>
																			<option value="EC">Ecuador</option>
																			<option value="EG">Egypt</option>
																			<option value="SV">El Salvador</option>
																			<option value="GQ">Equatorial Guinea</option>
																			<option value="ER">Eritrea</option>
																			<option value="EE">Estonia</option>
																			<option value="ET">Ethiopia</option>
																			<option value="FK">Falkland Islands</option>
																			<option value="FO">Faroe Islands</option>
																			<option value="FJ">Fiji</option>
																			<option value="FI">Finland</option>
																			<option value="FR">France</option>
																			<option value="FX">France (European Territory)</option>
																			<option value="GF">French Guiana</option>
																			<option value="TF">French Southern Territories</option>
																			<option value="GA">Gabon</option>
																			<option value="GM">Gambia</option>
																			<option value="GE">Georgia</option>
																			<option value="DE">Germany</option>
																			<option value="GH">Ghana</option>
																			<option value="GI">Gibraltar</option>
																			<option value="GR">Greece</option>
																			<option value="GL">Greenland</option>
																			<option value="GD">Grenada</option>
																			<option value="GP">Guadeloupe</option>
																			<option value="GU">Guam</option>
																			<option value="GT">Guatemala</option>
																			<option value="GN">Guinea</option>
																			<option value="GW">Guinea Bissau</option>
																			<option value="GY">Guyana</option>
																			<option value="HT">Haiti</option>
																			<option value="HM">Heard and McDonald Islands</option>
																			<option value="VA">Holy See (Vatican)</option>
																			<option value="HN">Honduras</option>
																			<option value="HK">Hong Kong</option>
																			<option value="HU">Hungary</option>
																			<option value="IS">Iceland</option>
																			<option value="IN">India</option>
																			<option value="ID">Indonesia</option>
																			<option value="IR">Iran</option>
																			<option value="IQ">Iraq</option>
																			<option value="IE">Ireland</option>
																			<option value="IL">Israel</option>
																			<option value="IT">Italy</option>
																			<option value="CI">Ivory Coast (Cote D'Ivoire)</option>
																			<option value="JM">Jamaica</option>
																			<option value="JP">Japan</option>
																			<option value="JO">Jordan</option>
																			<option value="KZ">Kazakhstan</option>
																			<option value="KE">Kenya</option>
																			<option value="KI">Kiribati</option>
																			<option value="KW">Kuwait</option>
																			<option value="KG">Kyrgyzstan</option>
																			<option value="LA">Laos</option>
																			<option value="LV">Latvia</option>
																			<option value="LB">Lebanon</option>
																			<option value="LS">Lesotho</option>
																			<option value="LR">Liberia</option>
																			<option value="LY">Libya</option>
																			<option value="LI">Liechtenstein</option>
																			<option value="LT">Lithuania</option>
																			<option value="LU">Luxembourg</option>
																			<option value="MO">Macau</option>
																			<option value="MK">Macedonia</option>
																			<option value="MG">Madagascar</option>
																			<option value="MW">Malawi</option>
																			<option value="MY">Malaysia</option>
																			<option value="MV">Maldives</option>
																			<option value="ML">Mali</option>
																			<option value="MT">Malta</option>
																			<option value="MH">Marshall Islands</option>
																			<option value="MQ">Martinique</option>
																			<option value="MR">Mauritania</option>
																			<option value="MU">Mauritius</option>
																			<option value="YT">Mayotte</option>
																			<option value="MX">Mexico</option>
																			<option value="FM">Micronesia</option>
																			<option value="MD">Moldova</option>
																			<option value="MC">Monaco</option>
																			<option value="MN">Mongolia</option>
																			<option value="MS">Montserrat</option>
																			<option value="MA">Morocco</option>
																			<option value="MZ">Mozambique</option>
																			<option value="MM">Myanmar</option>
																			<option value="NA">Namibia</option>
																			<option value="NR">Nauru</option>
																			<option value="NP">Nepal</option>
																			<option value="NL">Netherlands</option>
																			<option value="AN">Netherlands Antilles</option>
																			<option value="NC">New Caledonia</option>
																			<option value="NZ">New Zealand</option>
																			<option value="NI">Nicaragua</option>
																			<option value="NE">Niger</option>
																			<option value="NG">Nigeria</option>
																			<option value="NU">Niue</option>
																			<option value="NF">Norfolk Island</option>
																			<option value="KP">North Korea</option>
																			<option value="MP">Northern Mariana Islands</option>
																			<option value="NO">Norway</option>
																			<option value="OM">Oman</option>
																			<option value="PK">Pakistan</option>
																			<option value="PW">Palau</option>
																			<option value="PS">Palestinian Territory</option>
																			<option value="PA">Panama</option>
																			<option value="PG">Papua New Guinea</option>
																			<option value="PY">Paraguay</option>
																			<option value="PE">Peru</option>
																			<option value="PH">Philippines</option>
																			<option value="PN">Pitcairn</option>
																			<option value="PL">Poland</option>
																			<option value="PF">Polynesia</option>
																			<option value="PT">Portugal</option>
																			<option value="PR">Puerto Rico</option>
																			<option value="QA">Qatar</option>
																			<option value="RE">Reunion</option>
																			<option value="RO">Romania</option>
																			<option value="RU">Russian Federation</option>
																			<option value="RW">Rwanda</option>
																			<option value="GS">S. Georgia &amp; S. Sandwich Isls.</option>
																			<option value="SH">Saint Helena</option>
																			<option value="KN">Saint Kitts &amp; Nevis Anguilla</option>
																			<option value="LC">Saint Lucia</option>
																			<option value="PM">Saint Pierre and Miquelon</option>
																			<option value="VC">Saint Vincent &amp; Grenadines</option>
																			<option value="WS">Samoa</option>
																			<option value="SM">San Marino</option>
																			<option value="ST">Sao Tome and Principe</option>
																			<option value="SA">Saudi Arabia</option>
																			<option value="SN">Senegal</option>
																			<option value="SC">Seychelles</option>
																			<option value="SL">Sierra Leone</option>
																			<option value="SG">Singapore</option>
																			<option value="SK">Slovakia</option>
																			<option value="SI">Slovenia</option>
																			<option value="SB">Solomon Islands</option>
																			<option value="SO">Somalia</option>
																			<option value="ZA">South Africa</option>
																			<option value="KR">South Korea</option>
																			<option value="ES">Spain</option>
																			<option value="LK">Sri Lanka</option>
																			<option value="SD">Sudan</option>
																			<option value="SR">Suriname</option>
																			<option value="SZ">Swaziland</option>
																			<option value="SE">Sweden</option>
																			<option value="CH">Switzerland</option>
																			<option value="SY">Syrian Arab Republic</option>
																			<option value="TW">Taiwan</option>
																			<option value="TJ">Tajikistan</option>
																			<option value="TZ">Tanzania</option>
																			<option value="TH">Thailand</option>
																			<option value="TG">Togo</option>
																			<option value="TK">Tokelau</option>
																			<option value="TO">Tonga</option>
																			<option value="TT">Trinidad and Tobago</option>
																			<option value="TN">Tunisia</option>
																			<option value="TR">Turkey</option>
																			<option value="TM">Turkmenistan</option>
																			<option value="TC">Turks and Caicos Islands</option>
																			<option value="TV">Tuvalu</option>
																			<option value="UG">Uganda</option>
																			<option value="UA">Ukraine</option>
																			<option value="AE">United Arab Emirates</option>
																			<option value="GB">United Kingdom</option>
																			<option value="UY">Uruguay</option>
																			<option value="UM">USA Minor Outlying Islands</option>
																			<option value="UZ">Uzbekistan</option>
																			<option value="VU">Vanuatu</option>
																			<option value="VE">Venezuela</option>
																			<option value="VN">Vietnam</option>
																			<option value="VG">Virgin Islands (British)</option>
																			<option value="VI">Virgin Islands (USA)</option>
																			<option value="WF">Wallis and Futuna Islands</option>
																			<option value="EH">Western Sahara</option>
																			<option value="YE">Yemen</option>
																			<option value="YU">Yugoslavia</option>
																			<option value="ZR">Zaire</option>
																			<option value="ZM">Zambia</option>
																			<option value="ZW">Zimbabwe</option>
																			</select>
																			<font color="#FF0000"> </font>
																		</td>
																	</tr>
																	-->
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td class="teksjudul" width="30%" align="left" valign="top">
													<br>Informasi Kontak
												</td>
												<td class="teksmerah" align="right">
												</td>
											</tr>
											<tr>
												<td width="100%" colspan="2">
													<table cellspacing="1" bgcolor="#FF9966" width="100%">
														<tr>
															<td bgcolor="#ffffff" valign="top" width="100%">
																<table width="100%" cellpadding="5" class="tekshitamkecil">
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top" width="30%">
																			No Telpon / HP
																		</td>
																		<td>
																			<input type="text" class="tekshitamkecil" size="30" NAME = "txtTelepon" value="<?php
																				if($ulang==true){
																					if(isset($_POST['txtTelepon'])){
																						echo $_POST['txtTelepon'];
																					}
																				}
																			?>">
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Nomor Fax
																		</td>
																		<td>
																			<input type="text" class="tekshitamkecil" size="30" NAME = "txtFax" value="<?php
																				if($ulang==true){
																					if(isset($_POST['txtFax'])){
																						echo $_POST['txtFax'];
																					}
																				}
																			?>">
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<!--
											<tr>
												<td class="teksjudul" width="30%" align="left" valign="top">
													<br>Options
												</td>
												<td class="teksmerah" align="right">
												</td>
											</tr>
											<tr>
												<td width="100%" colspan="2">
													<table cellspacing="1" bgcolor="#FF9966" width="100%">
														<tr>
															<td bgcolor="#ffffff" valign="top" width="100%">
																<table width="100%" cellpadding="5" class="tekshitamkecil">
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top" width="30%">
																			New Arrivals Items Info
																		</td>
																		<td>
																			<input type="checkbox" class="tekshitamkecil" size="30" NAME = "txtNewArrival" value="1" <?php
																				if($ulang==true){
																					if($_POST['txtNewArrival']=="1"){
																						echo "checked";
																					}
																				}
																			?>>
																		</td>
																	</tr>
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Newsletter
																		</td>
																		<td>
																			<input type="checkbox" class="tekshitamkecil" size="30" NAME = "txtNewsletter" value="1" <?php
																				if($ulang==true){
																					if($_POST['txtNewsletter']=="1"){
																						echo "checked";
																					}
																				}
																			?>>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											-->
											<tr>
												<td class="teksjudul" width="30%" align="left" valign="top">
													<br>Login Password  
												</td>
												<td class="teksmerah" align="right">
												</td>
											</tr>
											<tr>
												<td width="100%" colspan="2">
													<table cellspacing="1" bgcolor="#FF9966" width="100%">
														<tr>
															<td bgcolor="#ffffff" valign="top" width="100%">
																<table width="100%" cellpadding="5" class="tekshitamkecil">
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top"  width="30%">
																			Password
																		</td>
																		<td>
																			<input type="password" class="tekshitamkecil" size="30" NAME = "txtPassword">
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																	<tr>
																		<td class="tekshitamkecil"  align="left" valign="top">
																			Re-type Password
																		</td>
																		<td>
																			<input type="password" class="tekshitamkecil" size="30" NAME = "txtPassword1">
																			<font color="#FF0000">*</font>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td>
													<br>
													&nbsp;&nbsp;<input type="image" name="ok" value=" Lanjutkan >> " class="tekshitam" src="images/button_continue.gif">
												</td>
												<td>
												</td>
											</tr>
										</table>
									</form>
								</td>
							</tr>

						</table>
						


<?php
print_footer();
?>