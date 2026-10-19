<?php
$koneksi = mysqli_connect("localhost", "root", "", "db_spp_oyan");

//check connection
if(mysqli_connect_errno()){
    echo "koneksi database gagal : ". mysqli_connect_error();
}

?>