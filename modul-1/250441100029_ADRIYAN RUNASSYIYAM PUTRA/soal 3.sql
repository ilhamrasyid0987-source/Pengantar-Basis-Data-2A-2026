CREATE DATABASE transaksi;
USE transaksi;
CREATE TABLE transaksi_harian(
id_transaksi INT,
jumlah_bayar DECIMAL(10,2)
);
SHOW TABLES;
DESCRIBE transaksi_harian;
TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;
