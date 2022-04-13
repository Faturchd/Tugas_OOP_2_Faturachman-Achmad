<?php

$connect = mysqli_connect('localhost', 'root', '', 'wilayah') or die(mysqli_error($connect));
if (!$connect) {
    echo "Koneksi Gagal!";
}