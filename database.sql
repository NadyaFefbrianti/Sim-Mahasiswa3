-- database.sql — import lewat phpMyAdmin (InfinityFree) setelah database dibuat
CREATE TABLE IF NOT EXISTS prodi (
  id INT AUTO_INCREMENT PRIMARY KEY,
  kode VARCHAR(10) NOT NULL UNIQUE,
  nama VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS mahasiswa (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nim VARCHAR(20) NOT NULL UNIQUE,
  nama VARCHAR(100) NOT NULL,
  prodi_id INT NOT NULL,
  angkatan YEAR NOT NULL,
  email VARCHAR(100),
  FOREIGN KEY (prodi_id) REFERENCES prodi(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  nama_lengkap VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

INSERT INTO prodi (kode, nama) VALUES
('TI','Teknik Informatika'),
('SI','Sistem Informasi'),
('TS','Teknik Sipil'),
('AK','Akuntansi');

INSERT INTO mahasiswa (nim, nama, prodi_id, angkatan, email) VALUES
('2211001','Contoh Mahasiswa Satu',1,2022,'mhs1@example.com'),
('2211002','Contoh Mahasiswa Dua',1,2022,'mhs2@example.com'),
('2312001','Contoh Mahasiswa Tiga',2,2023,'mhs3@example.com'),
('2313001','Contoh Mahasiswa Empat',3,2023,'mhs4@example.com'),
('2414001','Contoh Mahasiswa Lima',4,2024,'mhs5@example.com');

-- Akun demo: username admin / password admin123
INSERT INTO users (username, password, nama_lengkap) VALUES
('admin','$2y$10$m32WUOzDoWbGFcz3dTK0wOB1X4b5/yohdri3E1Gojkh8OlC.yy7Jq','Administrator');
