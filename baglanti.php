<?php
    /* Veritabanı Baglanti Bilgileri*/
    $sunucu = "localhost";
    $kullanici = "root";
    $sifre = "";
    $veritabani = "bby361_elmasaltundag";
    $port = 3306;

    /* Veritabanına Baglanti */
    $baglanti = mysqli_connect($sunucu, $kullanici, $sifre, $veritabani, 3306)
        or die("Veritabanına baglanti gerceklestirilemedi..!");

    /* Turkce karakterler icin düzenleme*/
    mysqli_set_charset($baglanti,"utf8");


?>