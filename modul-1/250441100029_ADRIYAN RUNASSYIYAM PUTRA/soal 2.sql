CREATE DATABASE perusahaan;
use perusahaan;
CREATE TABLE pelanggan_setia(
	nomor_identitas INT
);
SHOW TABLES;
DESCRIBE pelanggan_setia;

ALTER TABLE pelanggan_setia
MODIFY COLUMN nomor_identitas VARCHAR(20);

