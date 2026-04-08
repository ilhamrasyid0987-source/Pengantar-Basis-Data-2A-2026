CREATE DATABASE perpustakaan;
USE perpustakaan;

CREATE TABLE koleksi_langka (
    id_buku        BIGINT UNSIGNED AUTO_INCREMENT,
    judul          VARCHAR(250) NOT NULL,
    tahun_terbit   YEAR,
    estimasi_harga DECIMAL(19, 4),
    PRIMARY KEY (id_buku)
);
SHOW TABLES;
describe koleksi_langka;
