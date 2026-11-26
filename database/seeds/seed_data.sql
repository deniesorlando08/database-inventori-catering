USE db_inventori_catering;

-- 1. KATEGORI
INSERT INTO kategori (nama_kategori, keterangan)
VALUES
('Bahan Kering', 'Bahan baku kering catering'),
('Bahan Basah', 'Bahan baku basah catering');

-- 2. PENGGUNA
INSERT INTO pengguna
(nama, username, password_hash, role)
VALUES
('Admin Catering', 'admin_catering', 'hash_dummy_admin', 'ADMIN'),
('Petugas Gudang', 'petugas_gudang', 'hash_dummy_petugas', 'PETUGAS');

-- 3. BAHAN BAKU
INSERT INTO bahan_baku
(kode_bahan, nama_bahan, id_kategori, satuan,
 harga, stok, stok_minimum)
VALUES
('BK001', 'Tepung Terigu', 1, 'KG', 12000, 50, 10),
('BK002', 'Telur Ayam', 1, 'BUTIR', 2000, 100, 20),
('BK003', 'Beras', 1, 'KG', 15000, 75, 15),
('BB001', 'Daging Sapi', 2, 'KG', 120000, 20, 5),
('BB002', 'Ayam', 2, 'KG', 38000, 30, 10),
('BB003', 'Ikan', 2, 'KG', 40000, 15, 5);

-- 4. TRANSAKSI
INSERT INTO transaksi
(nomor_transaksi, tanggal, jenis, id_user, keterangan)
VALUES
('TRX001', '2026-11-20 08:00:00', 'MASUK', 1, 'Pembelian bahan baku'),
('TRX002', '2026-11-21 09:00:00', 'KELUAR', 2, 'Penggunaan produksi catering');

-- 5. DETAIL TRANSAKSI
INSERT INTO detail_transaksi
(id_transaksi, id_bahan, jumlah, harga_satuan)
VALUES
(1, 1, 10, 12000),
(1, 2, 20, 2000),
(2, 1, 5, 12000),
(2, 5, 3, 38000);