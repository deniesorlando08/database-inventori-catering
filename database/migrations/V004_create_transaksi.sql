CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    nomor_transaksi VARCHAR(30) NOT NULL UNIQUE,
    tanggal DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    jenis ENUM('MASUK', 'KELUAR') NOT NULL,
    id_user INT NOT NULL,
    keterangan VARCHAR(255) NULL,

    CONSTRAINT fk_transaksi_pengguna
        FOREIGN KEY (id_user)
        REFERENCES pengguna(id_user)
) ENGINE=InnoDB;