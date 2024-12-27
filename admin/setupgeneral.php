<?php
session_start();
include "../include/connection.php";
include "fungsi.php";
include "viewer.php";


checklanjut();

if(isset($_POST['simpan'])){
	$field[1][1]="ContactEmail";
	$field[1][2]="'".$_POST['email']."'";
	$field[2][1]="";
	$field[2][2]="";
	generate_query("update",$field,"tbl_general","","");
}

$result = mysql_query("select * from tbl_general");
$row = mysql_fetch_row($result);
header_view();
?>
				<tr>
					<td class="judulbiru">
						Setup General:
					</td>
				</tr>
				<tr>
					<td>
						<table class="tekshitam" cellspacing="0">
							<form action="setupgeneral.php" method="post" enctype="multipart/form-data">
							<tr>
								<td>	
									Email
								</td>
								<td class="rapet">	
									<input type="text" name="email" size="40" class="tekshitam" value="<?php
										echo $row[0];
									?>">
								</td>
							</tr>
							<!--							
							<tr>
								<td valign="top">	
									Contact
								</td>
								<td class="rapet">	
									<textarea cols="90" rows="20" name="MyTextAreaName">
									<font size="1" color="#000000"><?php
										echo $row[1];
									?></font>
									</textarea>
									<script language="JavaScript">
										//comment any button that you want to hide
										var AK_DisplayedButtons = Array(	
																'FontName',
																'FontSize',
																'SelectAll',
																'Delete',
																'Cut',
																'Copy',
																'Paste',
																'SaveAs',
																'Print',
																'Separator',	
																'Bold',
																'Italic',
																'Underline',
																'Strikethrough',
																'Separator',
																'JustifyLeft',
																'JustifyCenter',
																'JustifyRight',
																'JustifyFull',
																'Separator',
																'InsertOrderedList',
																'InsertUnorderedList',
																'Outdent',
																'Indent',
																'Separator',
																'SuperScript',
																'SubScript',
																'Separator',
																'InsertHorizontalRule',
																'CreateLink',
																'Unlink',
																'Image',
																'Table',
																'SpecialChars',
																'Separator',
																'Forecolor',
																'Backcolor',
																'Separator',
																'Date',
																'ChangeMode',
																'Separator',							
																'Help'					//the last one has NO comma
															);
											var AK_width = 600;
											var AK_height = 300;
											
										// All fields are optional. Place "null" where you don't want to specify.
										//ak_wysiwyg_generator(width, height, "TextAreaName", DisplayedButtonList);
										ak_wysiwyg_generator(AK_width, AK_height, "MyTextAreaName", AK_DisplayedButtons);
										
										//Examples:
										// ak_wysiwyg_generator(null, null, "MyTextAreaName", AK_DisplayedButtons);
										// ak_wysiwyg_generator(AK_width, AK_height, null, AK_DisplayedButtons);
										// ak_wysiwyg_generator(AK_width, AK_height, "MyTextAreaName", null);
										
										// It can be no parameter at all
										// ak_wysiwyg_generator();  
									</script>
								</td>
							</tr>
							-->
							<tr>
								<td>								
								</td>
								<td align="center">
									<input type="submit" name="simpan" value=" Save " class="tekshitam">
									<input type="reset" name="reset" value=" Reset " class="tekshitam">
								</td>
							</tr>
							</form>
						</table>
						<br>
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
<?php
footer_view();
?>