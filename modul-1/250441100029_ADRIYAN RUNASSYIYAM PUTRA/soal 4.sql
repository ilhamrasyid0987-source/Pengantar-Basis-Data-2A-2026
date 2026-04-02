CREATE DATABASE platform;
USE platform;
CREATE TABLE umpan_balik (
    id_komentar BIGINT PRIMARY KEY AUTO_INCREMENT,
    isi_komentar TEXT,
    kode_negara CHAR(2)
    );
SHOW TABLES;
DESCRIBE umpan_balik;
