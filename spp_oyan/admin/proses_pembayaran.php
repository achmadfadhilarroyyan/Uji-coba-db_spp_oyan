<?php
/** @var mysqli $koneksi */
session_start();
include "../src/koneksi.php";

if ($_GET['act'] == 'bayar') {
    $id_pembayaran  = $_GET['id_pembayaran'];
    $nisn           = $_GET['nisn'];

    // Membuat nomor pembayaran
    $today = date('ymd');
    $query = mysqli_query($koneksi, "SELECT max(no_bayar) AS last FROM pembayaran WHERE no_bayar LIKE '$today%'");
    $data = mysqli_fetch_array($query);
    $lastNoBayar = $data['last'];
    
    // Cek apakah ada nomor pembayaran sebelumnya di hari ini
    if ($lastNoBayar != null) {
        $lastNoUrut = substr($lastNoBayar, 6, 4);
        $nextNoUrut = (int)$lastNoUrut + 1;
    } else {
        $nextNoUrut = 1;
    }

    $nextNoBayar = $today . sprintf('%04s', $nextNoUrut);

    // Tanggal bayar
    $tgl_pembayaran = date('Y-m-d');

    // --- JALAN PINTAS: Ambil id_petugas langsung dari database ---
    $user_aktif = $_SESSION['username'];
    $ambil_petugas = mysqli_query($koneksi, "SELECT id_petugas FROM petugas WHERE username='$user_aktif'");
    $data_petugas = mysqli_fetch_assoc($ambil_petugas);
    
    $admin = $data_petugas['id_petugas'];
    // -------------------------------------------------------------

    mysqli_query($koneksi, "UPDATE pembayaran SET no_bayar='$nextNoBayar',
    tgl_pembayaran='$tgl_pembayaran',
    keterangan='LUNAS',
    id_petugas='$admin'
    WHERE id_pembayaran='$id_pembayaran'");

    header('location:halaman_admin.php?open=data_pembayaran&nisn=' . $nisn);
}
?>