<?php
session_start();
include "viewer.php";
include "include/connection.php";
include "include/manipulation_function.php";
include "include/query_function.php";

$noorder = $_GET['noorder'];

print_header("");

?>
<html>
<head>
    <title>Cara Membuat Visitor Counter (Menghitung Jumlah Pengunjung) Menggunakan PHP</title>
    <style type="text/css">
        *{margin:0; padding:0;}
        .container {margin:auto; width: 400px}
        header {background-color: #39ce22; text-align: center}
        article {background-color: #11e5a5; text-align: center; padding: 20px 0;}
    </style>
</head>
<body>
<div class="container">
        <header>
            <h1>Selamat Datang Di Berjaya Maju Mapan </h1>
        </header>
 
        <p>
          <article>
            Website ini telah dikunjungi
            sebanyak : <?php 
            include ("counter.php");
            echo "<p style='color:red; font-size:large;font-weight:enchant_broker_list_dicts(broker)'> $kunjungan[0] </p>";
            ?>penunjung</article>
        </p>
        <p>&nbsp;</p>
</div>
</body>
</html>

<font color='#4169E1' type='comic sans ms' size='4'>Hit Counter Application <align='center'></align></font>
<font color='#4169E1' type='arrial narrow' size='1'>Version 1.0<align='center'></align></font></br></br>
<a href="http://localhost/berjayamajumapan/index.php"> Back To Home</a></p>

<?php
print_footer();
?>