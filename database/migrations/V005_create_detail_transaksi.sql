CREATE TABLE detail_transaksi (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_transaksi INT NOT NULL,
    id_bahan INT NOT NULL,
    jumlah INT NOT NULL,
    harga_satuan DECIMAL(12,2) NOT NULL,

    CONSTRAINT chk_jumlah
        CHECK (jumlah > 0),

    CONSTRAINT chk_harga_satuan
        CHECK (harga_satuan >= 0),

    CONSTRAINT fk_detail_transaksi
        FOREIGN KEY (id_transaksi)
        REFERENCES transaksi(id_transaksi),

    CONSTRAINT fk_detail_bahan
        FOREIGN KEY (id_bahan)
        REFERENCES bahan_baku(id_bahan)
) ENGINE=InnoDB;