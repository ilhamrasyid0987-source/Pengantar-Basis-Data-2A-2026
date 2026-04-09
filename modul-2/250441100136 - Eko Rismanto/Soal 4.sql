CREATE DATABASE db_klinik;
USE db_klinik;
CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(50)
);

CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    
CONSTRAINT fk_pasien FOREIGN KEY (id_pasien) 
REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
CONSTRAINT fk_dokter FOREIGN KEY (id_dokter) 
REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

describe rekam_medis;

INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi) VALUES 
(1, 'dr. Andi Pratama', 'Spesialis Anak'),
(2, 'dr. Citra Lestari', 'Spesialis Jantung');

INSERT INTO pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon) VALUES 
(101, 'Budi Santoso', '1990-05-15', '08123456789'),
(102, 'Siti Aminah', '1985-10-20', '08198765432');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES 
(501, 101, 1, '2026-04-01', 'Demam Ringan'),
(502, 102, 2, '2026-04-02', 'Hipertensi');

UPDATE pasien 
SET no_telepon = '08555555555' 
WHERE id_pasien = 101;

UPDATE dokter 
SET spesialisasi = 'Bedah Anak' 
WHERE id_dokter = 1;

DELETE FROM rekam_medis 
WHERE id_rekam = 502;


DROP TABLE IF EXISTS rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    CONSTRAINT fk_pasien_rekam FOREIGN KEY (id_pasien) 
        REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    CONSTRAINT fk_dokter_rekam FOREIGN KEY (id_dokter) 
        REFERENCES dokter(id_dokter) ON DELETE CASCADE
);