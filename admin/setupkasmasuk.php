<?php
session_start();
include "../include/connection.php";
include "fungsi.php";
include "viewer.php";


checklanjut();

if(isset($_POST['simpan'])){
        if($_POST['no']=="AUTO"){ //tambah
                $no=ambilnomor("ID","tr_kas_masuk","","000000");
                $field[1][1]="ID";
                $field[1][2]="'".$no."'";
                $field[2][1]="Tanggal";
                $field[2][2]="'".$_POST['tanggal']."'";
                $field[3][1]="DiterimaDari";
                $field[3][2]="'".$_POST['dari']."'";
                $field[4][1]="JumlahDiterima";
                $field[4][2]="'".$_POST['jumlahtxt']."'";
                $field[5][1]="Keterangan";
                $field[5][2]="'".$_POST['MyTextAreaName']."'";
                $field[6][1]="JumlahRp";
                $field[6][2]="'".$_POST['jumlahrp']."'";
                $field[7][1]="";
                $field[7][2]="";
                generate_query("insert",$field,"tr_kas_masuk","","");
        }
        else{ //edit
                if($gambar=="")
                        $gambar=$_POST['tmpgambar'];

                $field[1][1]="ID";
                $field[1][2]="'".$_POST['no']."'";
                $field[2][1]="Tanggal";
                $field[2][2]="'".$_POST['tanggal']."'";
                $field[3][1]="DiterimaDari";
                $field[3][2]="'".$_POST['dari']."'";
                $field[4][1]="JumlahDiterima";
                $field[4][2]="'".$_POST['jumlahtxt']."'";
                $field[5][1]="Keterangan";
                $field[5][2]="'".$_POST['MyTextAreaName']."'";
                $field[6][1]="JumlahRp";
                $field[6][2]="'".$_POST['jumlahrp']."'";
                $field[7][1]="";
                $field[7][2]="";
                generate_query("update",$field,"tr_kas_masuk","where ID='".$_POST['no']."'","");
                if(isset($_GET['no'])){
                        $_GET['no']="";
                }
        }
}

if(isset($_POST['pub'])){
        $field[1][1]="Publish";
        $field[1][2]="'0'";
        generate_query("update",$field,"tr_kas_masuk","","");
        while(list($key, $value)=each($_POST['publish'])){
                $field[1][1]="Publish";
                $field[1][2]="'1'";
                generate_query("update",$field,"tr_kas_masuk","where ID='".$value."'","");
        }
}

if(isset($_GET['hapus'])){
        if($_GET['no']!=""){
                generate_query("delete","","tr_kas_masuk","where ID='".$_GET['no']."'","");
        }
        if(isset($_GET['no'])){
                $_GET['no']="";
        }
}

if(isset($_GET['edit'])){
        if($_GET['no']!=""){
                $result1= mysql_query("select * from tr_kas_masuk where ID='".$_GET['no']."'");
                $row1=mysql_fetch_row($result1);
        }
}

$result = mysql_query("select * from tr_kas_masuk order by ID desc");

header_view();
?>
                                <tr>
                                        <td class="judulbiru">
                                                Setup Kas Masuk:
                                        </td>
                                </tr>
                                <tr>
                                        <td>
                                        <table class="tekshitam" cellspacing="0">
                                                <form action="setupkasmasuk.php" method="post" enctype="multipart/form-data">
                                                        <tr>
                                                                <td>
                                                                        ID
                                                                </td>
                                                                <td class="rapet">
                                                                        <input type="text" name="tmpno" size="12" value="<?php
                                                                        if(isset($_GET['no'])){
                                                                                if($_GET['no']==""){
                                                                                        echo "AUTO";
                                                                                }
                                                                                else{
                                                                                        echo $row1[0];
                                                                                }
                                                                        }
                                                                        else
                                                                                echo "AUTO";
                                                                        ?>" class="tekshitam" disabled>
                                                                        <input type="hidden" name="no" size="12" value="<?php
                                                                        if(isset($_GET['no'])){
                                                                                if($_GET['no']==""){
                                                                                        echo "AUTO";
                                                                                }
                                                                                else{
                                                                                        echo $row1[0];
                                                                                }
                                                                        }
                                                                        else
                                                                                echo "AUTO";
                                                                        ?>" class="tekshitam">
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td>
                                                                        Tanggal
                                                                </td>
                                                                <td class="rapet">
                                                                        <input type="text" name="tanggal" size="40" class="tekshitam" value="<?php
                                                                        if(isset($_GET['edit'])){
                                                                                echo $row1[1];
                                                                        }
																		else{
																			echo "";
																		}
                                                                        ?>"> Format (yyyy-mm-dd)
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td>
                                                                        Diterima Dari
                                                                </td>
                                                                <td class="rapet">
                                                                        <input type="text" name="dari" size="40" class="tekshitam" value="<?php
                                                                        if(isset($_GET['edit'])){
                                                                                echo $row1[2];
                                                                        }
                                                                        ?>">
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td>
                                                                        Jumlah Diterima
                                                                </td>
                                                                <td class="rapet">
                                                                        <input type="text" name="jumlahtxt" size="40" class="tekshitam" value="<?php
                                                                        if(isset($_GET['edit'])){
                                                                                echo $row1[3];
                                                                        }
                                                                        ?>">
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td valign="top">
                                                                        Keterangan
                                                                </td>
                                                                <td class="rapet">
                                                                        <textarea cols="40" rows="10" name="MyTextAreaName"><?php
                                                                        if(isset($_GET['edit'])){
                                                                                echo $row1[4];
                                                                        }
                                                                        else{
                                                                                echo "";
                                                                        }
                                                                        ?></textarea>
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td>
                                                                        Jumlah (Rp)
                                                                </td>
                                                                <td class="rapet">
                                                                        <input type="text" name="jumlahrp" size="40" class="tekshitam" value="<?php
                                                                        if(isset($_GET['edit'])){
                                                                                echo $row1[5];
                                                                        }
                                                                        ?>">
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td>
                                                                </td>
                                                                <td align="center">
                                                                        <input type="submit" name="simpan" value="Save" class="tekshitam">
                                                                        <input type="reset" name="reset" value="Reset" class="tekshitam">
                                                                </td>
                                                        </tr>
                                                        </form>
                                                </table>
                                                <br>
                                                <table  bgcolor="#333333" cellspacing="1" border="0" width="80%">
                                                        <tr class="teksmerah" bgcolor="#FF9966">
                                                                <td>
                                                                        ID
                                                                </td>
                                                                <td>
                                                                        Diterima Dari
                                                                </td>
                                                                <td width="50">
                                                                        Edit
                                                                </td>
                                                                <td width="10">
                                                                        Delete
                                                                </td>
                                                                <td width="10">
                                                                        Publish
                                                                </td>
                                                        </tr>
                                                        <form action="" method="post" enctype="multipart/form-data">
                                                        <?php
                                                        while($row=mysql_fetch_row($result)){
                                                        ?>
                                                        <tr bgcolor="#FDFDFD" class="tekshitam" valign="top">
                                                                <td>
                                                                        <?php echo $row[0]?>
                                                                </td>
                                                                <td>
                                                                        <?php echo $row[2]?>
                                                                </td>
                                                                <td>
                                                                        <a href="setupkasmasuk.php?edit=1&no=<?php echo $row[0]?>" class="link">Edit</a>
                                                                </td>
                                                                <td>
                                                                        <a href="setupkasmasuk.php?hapus=1&no=<?php echo $row[0]?>" class="link">Delete</a>
                                                                </td>
                                                                <td>
                                                                        <input type="checkbox" name="publish[]" value="<?php echo $row[0]?>" <?php
                                                                        if($row[3]=='1'){
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
<?php
footer_view();
?>