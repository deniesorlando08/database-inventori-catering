CREATE TABLE kategori (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(80) NOT NULL UNIQUE,
    keterangan VARCHAR(255) NULL
) ENGINE=InnoDB;