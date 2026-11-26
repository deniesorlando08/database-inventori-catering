CREATE TABLE bahan_baku (
    id_bahan INT AUTO_INCREMENT PRIMARY KEY,
    kode_bahan VARCHAR(30) NOT NULL UNIQUE,
    nama_bahan VARCHAR(120) NOT NULL,
    id_kategori INT NOT NULL,
    satuan VARCHAR(30) NOT NULL,
    harga DECIMAL(12,2) NOT NULL DEFAULT 0,
    stok INT NOT NULL DEFAULT 0,
    stok_minimum INT NOT NULL DEFAULT 0,

    CONSTRAINT chk_harga
        CHECK (harga >= 0),

    CONSTRAINT chk_stok
        CHECK (stok >= 0),

    CONSTRAINT chk_stok_minimum
        CHECK (stok_minimum >= 0),

    CONSTRAINT fk_bahan_kategori
        FOREIGN KEY (id_kategori)
        REFERENCES kategori(id_kategori)
) ENGINE=InnoDB;