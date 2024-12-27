<?php

session_start();

include "../include/connection.php";

include "fungsi.php";

include "viewer.php";



checklanjut();

$message = "";



if(isset($_POST['upload'])){

        if (is_uploaded_file($_FILES['gambar']['tmp_name'])){

                if (move_uploaded_file($_FILES['gambar']['tmp_name'], "../cimages/".$_FILES['gambar']['name']) ){

                        $error = "Success upload images...";

                        $suksesupload=1;

                        $gambar="cimages/".$_FILES['gambar']['name'];

                }

                $no = substr($_FILES['gambar']['name'],0,strlen($_FILES['gambar']['name'])-4);

        }

        else{

                $no = $_POST['tmpno'];

        }

}



if(isset($_POST['uploadthumb'])){

        if (is_uploaded_file($_FILES['gambarthumb']['tmp_name'])){

                if (move_uploaded_file($_FILES['gambarthumb']['tmp_name'], "../cimages/".$_FILES['gambarthumb']['name']) ){

                        $error = "Success upload images...";

                        $suksesupload=1;

                        $gambar="cimages/".$_FILES['gambarthumb']['name'];

                }

                $no = substr($_FILES['gambarthumb']['name'],0,strlen($_FILES['gambarthumb']['name'])-4);

        }

        else{

                $no = $_POST['tmpno'];

        }

}



if(isset($_POST['simpan'])){

        $gambar="";

        $no = "";

        if (is_uploaded_file($_FILES['gambar']['tmp_name'])){

                if (move_uploaded_file($_FILES['gambar']['tmp_name'], "../cimages/".$_FILES['gambar']['name']) ){

                        $error = "Success upload images...";

                        $suksesupload=1;

                        $gambar="cimages/".$_FILES['gambar']['name'];

                }

        }

        else{

                $gambar=$_POST['tmpgambar'];

        }



        if($_POST['new']=="no" ){ //tambah

                $no=ambilnomor("ID_det","t_freebies_detail","","0000");

                //$no = substr($_FILES['gambar']['name'],0,strlen($_FILES['gambar']['name'])-4);

                $field[1][1]="ID";

                $field[1][2]="'".$_POST['id']."'";

                $field[2][1]="ID_det";

                $field[2][2]="'".$no."'";

                $field[3][1]="PathThumb";

                $field[3][2]="'".$_POST['tmpgambarthumb']."'";

                $field[4][1]="PathGambar";

                $field[4][2]="'".$_POST['tmpgambar']."'";

                $field[5][1]="";

                $field[5][2]="";

                generate_query("insert",$field,"t_freebies_detail","","");

        }

        else{ //edit

                //if($gambar=="")

                //        $gambar=$_POST['tmpgambar'];



                $field[1][1]="ID";

                $field[1][2]="'".$_POST['id']."'";

                $field[2][1]="ID_det";

                $field[2][2]="'".$_POST['id_det']."'";

                $field[3][1]="PathThumb";

                $field[3][2]="'".$_POST['tmpgambarthumb']."'";

                $field[4][1]="PathGambar";

                $field[4][2]="'".$_POST['tmpgambar']."'";

                $field[5][1]="";

                $field[5][2]="";



                generate_query("update",$field,"t_freebies_detail","where ID='".$_POST['id']."' and ID_det='". $_POST['id_det'] ."' ","");

                if(isset($_GET['no'])){

                        $_GET['no']="";

                }

        }

}



if(isset($_POST['pub'])){

        $field[1][1]="Publish";

        $field[1][2]="'0'";

        generate_query("update",$field,"t_freebies_detail","where ID='". $_POST['id'] ."'","");

        while(list($key, $value)=each($_POST['publish'])){

                $field[1][1]="Publish";

                $field[1][2]="'1'";

                generate_query("update",$field,"t_freebies_detail","where ID='". $_POST['idproduct'] ."' and ID_det='".$value."'","");

        }

}



if(isset($_GET['hapus'])){

        if($_GET['no']!=""){

                generate_query("delete","","t_freebies_detail","where ID='".$_GET['no']."' and ID_det='". $_GET['filename'] ."'","");

        }

        if(isset($_GET['no'])){

                $_GET['no']="";

        }

}



if(isset($_GET['edit'])){

        if($_GET['no']!=""){

                $result1= mysql_query("select * from t_freebies_detail where ID='".$_GET['no']."' and ID_det='". $_GET['filename'] ."'");

                $row1=mysql_fetch_row($result1);

        }

}



if(isset($_GET['no'])){

        $result = mysql_query("select * from t_freebies_detail where ID='". $_GET['no'] ."' order by ID");

}

elseif(isset($_POST['upload']) || isset($_POST['uploadthumb']) || isset($_POST['simpan']) || isset($_POST['publish'])){

        $result = mysql_query("select * from t_freebies_detail where ID='". $_POST['id'] ."' order by ID");

}



header_view();

?>

                                <tr>

                                        <td class="judulbiru">

                                                Setup Images:

                                        </td>

                                </tr>

                                <tr>

                                        <td valign="top">

                                                <form action="setupfreebies_det.php" method="post" enctype="multipart/form-data">

                                                <table width="100%" bgcolor="#333333" cellpadding="10" cellspacing="1">

                                                        <tr>

                                                                <td width="400" bgcolor="#FDFDFD" class="tekshitam" valign="top">

                                                                        <input type="text" name="id_det" value="<?php

                                                                        if(isset($_GET['edit'])){

                                                                                echo $row1[1];

                                                                        }


                                                                     elseif(isset($_POST['upload']) || isset($_POST['uploadthumb']) || isset($_POST['simpan'])){

                                                                             echo $_POST['id_det'];

                                                                     }

                                                                        ?>">

                                                                     <input type="text" name="id" size="40" class="tekshitam" value="<?php

                                                                     if(isset($_GET['no'])){

                                                                             echo $_GET['no'];

                                                                     }

                                                                     elseif(isset($_POST['upload']) || isset($_POST['uploadthumb']) || isset($_POST['simpan']) || isset($_POST['publish'])){

                                                                             echo $_POST['id'];

                                                                     }

                                                                     ?>">
                                                                        <hr>

                                                                        Input File

                                                                        <input type="file" name="gambar" size="30" class="tekshitam">&nbsp;&nbsp;<input type="submit" name="upload" class="tekshitam" value="Upload">

                                                                        <br>

                                                                        Images Path :

                                                                        <?php

                                                                        if(isset($_GET['edit'])){

                                                                                echo $row1[3];

                                                                        }

                                                                        elseif(isset($_POST['upload'])){

                                                                                echo $gambar;

                                                                        }

                                                                        elseif(isset($_POST['uploadthumb'])){

                                                                                echo $_POST['tmpgambar'];

                                                                        }

                                                                        ?>

                                                                        <input type="hidden" name="tmpgambar" size="40" class="tekshitam" value="<?php

                                                                        if(isset($_GET['edit'])){

                                                                                echo $row1[3];

                                                                        }

                                                                        elseif(isset($_POST['upload'])){

                                                                                echo $gambar;

                                                                        }

                                                                        elseif(isset($_POST['uploadthumb'])){

                                                                                echo $_POST['tmpgambar'];

                                                                        }

                                                                        ?>">

                                                                        <input type="hidden" name="tmpgambarold" size="40" class="tekshitam" value="<?php

                                                                        if(isset($_GET['edit'])){

                                                                                echo $row1[3];

                                                                        }

                                                                        elseif(isset($_POST['upload']) || isset($_POST['uploadthumb'])){

                                                                                echo $_POST['tmpgambarold'];

                                                                        }
                                                                        ?>">

                                                                        <?php

                                                                        if(isset($_GET['no']) && isset($_GET['filename'])){

                                                                                if($_GET['no']!=""){

                                                                        ?>

                                                                                <img src="../<?php echo $row1[3]?>" width="400" height="400">

                                                                        <?php

                                                                                }

                                                                        }

                                                                        elseif(isset($_POST['upload'])){

                                                                        ?>

                                                                                <img src="../<?php echo $gambar?>" width="400" height="400">

                                                                        <?php

                                                                        }

                                                                        elseif(isset($_POST['uploadthumb'])){

                                                                        ?>

                                                                                <img src="../<?php echo $_POST['tmpgambar']?>" width="400" height="400">

                                                                        <?php

                                                                        }

                                                                        ?>



                                                                        <input type="hidden" name="new" size="40" class="tekshitam" value="<?php

                                                                        if(isset($_GET['edit'])){

                                                                                echo "yes";

                                                                        }

                                                                        elseif(isset($_POST['upload']) || isset($_POST['uploadthumb'])){

                                                                                echo $_POST['new'];

                                                                        }
                                                                        else{
                                                                                echo "no";
                                                                        }
                                                                        /*
                                                                        if(isset($_GET['edit'])){

                                                                                echo "no";

                                                                        }

                                                                        elseif(isset($_POST['upload']) || isset($_POST['uploadthumb'])){

                                                                                echo "edit";

                                                                        }
                                                                        */

                                                                        ?>">

                                                                </td>

                                                                <td valign="top" bgcolor="#FDFDFD">

                                                                        <table class="tekshitam" width="100%">

                                                                                <tr>

                                                                                        <td>

                                                                                                Thumbnail Picture

                                                                                        </td>

                                                                                </tr>

                                                                                <tr>

                                                                                        <td>

                                                                                                <table width="100%">

                                                                                                        <tr>

                                                                                                                <td width="100%" bgcolor="#FDFDFD" class="tekshitam" valign="top">

                                                                                                                        Input File

                                                                                                                        <input type="file" name="gambarthumb" size="30" class="tekshitam">&nbsp;&nbsp;<input type="submit" name="uploadthumb" class="tekshitam" value="Upload">

                                                                                                                        <br>

                                                                                                                        Images Path :

                                                                                                                        <?php

                                                                                                                        if(isset($_GET['edit'])){

                                                                                                                                echo $row1[2];

                                                                                                                        }

                                                                                                                        elseif(isset($_POST['uploadthumb'])){

                                                                                                                                echo $gambar;

                                                                                                                        }

                                                                                                                        elseif(isset($_POST['upload'])){

                                                                                                                                echo $_POST['tmpgambarthumb'];

                                                                                                                        }

                                                                                                                        ?>

                                                                                                                        <br>

                                                                                                                        <input type="hidden" name="tmpgambarthumb" size="40" class="tekshitam" value="<?php

                                                                                                                        if(isset($_GET['edit'])){

                                                                                                                                echo $row1[2];

                                                                                                                        }

                                                                                                                        elseif(isset($_POST['uploadthumb'])){

                                                                                                                                echo $gambar;

                                                                                                                        }

                                                                                                                        elseif(isset($_POST['upload'])){

                                                                                                                                echo $_POST['tmpgambarthumb'];

                                                                                                                        }

                                                                                                                        ?>">
                                                                                                                        <input type="hidden" name="tmpgambarthumbold" size="40" class="tekshitam" value="<?php

                                                                                                                        if(isset($_GET['edit'])){

                                                                                                                                echo $row1[2];

                                                                                                                        }
                                                                                                                        elseif(isset($_POST['upload']) || isset($_POST['uploadthumb'])){

                                                                                                                                echo $_POST['tmpgambarthumbold'];

                                                                                                                        }
                                                                                                                        ?>">


                                                                                                                        <?php

                                                                                                                        if(isset($_GET['no']) && isset($_GET['filename'])){

                                                                                                                                if($_GET['no']!=""){

                                                                                                                        ?>

                                                                                                                                <img src="../<?php echo $row1[2]?>" width="70" height="70">

                                                                                                                        <?php

                                                                                                                                }

                                                                                                                        }

                                                                                                                        elseif(isset($_POST['uploadthumb'])){

                                                                                                                        ?>

                                                                                                                                <img src="../<?php echo $gambar?>" width="70" height="70">

                                                                                                                        <?php

                                                                                                                        }

                                                                                                                        elseif(isset($_POST['upload'])){

                                                                                                                        ?>

                                                                                                                                <img src="../<?php echo $_POST['tmpgambarthumb']?>" width="70" height="70">

                                                                                                                        <?php

                                                                                                                        }

                                                                                                                        ?>



                                                                                                                        <input type="hidden" name="newthumb" size="40" class="tekshitam" value="<?php

                                                                                                                        if(isset($_GET['edit'])){

                                                                                                                                echo "no";

                                                                                                                        }

                                                                                                                        elseif(isset($_POST['upload']) || isset($_POST['uploadthumb'])){

                                                                                                                                echo "edit";

                                                                                                                        }

                                                                                                                        ?>">

                                                                                                                </td>

                                                                                                        </tr>

                                                                                                </table>

                                                                                        </td>

                                                                                </tr>

                                                                        </table>

                                                                        <hr>


                                                                </td>

                                                        </tr>

                                                </table>

                                                <table width="100%">

                                                        <tr>

                                                                <td align="center">

                                                                        <input type="submit" name="simpan" value="  Submit  " class="tekshitam">

                                                                        <input type="submit" name="cancel" value="  Cancel  " class="tekshitam">

                                                                </td>

                                                        </tr>

                                                </table>


                                                <br>

                                                <table  bgcolor="#333333" cellspacing="1" border="0" width="80%">

                                                        <tr class="teksmerah" bgcolor="#FF9966">

                                                                <td>

                                                                        Title

                                                                </td>

                                                                <td width="100">

                                                                        Caption

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


                                                        <?php

                                                        while($row=mysql_fetch_row($result)){

                                                        ?>

                                                        <input type="hidden" name="idproduct" value="<?php echo $row[0]?>">

                                                        <tr bgcolor="#FDFDFD" class="tekshitam" valign="top">

                                                                <td>

                                                                        <?php echo $row[1]?>

                                                                </td>

                                                                <td>
                                                                        <img src="../<?php echo $row[2]?>">
                                                                </td>

                                                                <td>

                                                                        <a href="setupfreebies_det.php?edit=1&no=<?php echo $row[0]?>&filename=<?php echo $row[1]?>" class="link">Edit</a>

                                                                </td>

                                                                <td>

                                                                        <a href="setupfreebies_det.php?hapus=1&no=<?php echo $row[0]?>&filename=<?php echo $row[1]?>" class="link">Delete</a>

                                                                </td>

                                                                <td>

                                                                        <input type="checkbox" name="publish[]" value="<?php echo $row[1]?>" <?php

                                                                        if($row[4]=='1'){

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