-- 1. Menampilkan seluruh bahan baku

SELECT
    b.kode_bahan,
    b.nama_bahan,
    k.nama_kategori,
    b.satuan,
    b.harga,
    b.stok,
    b.stok_minimum
FROM bahan_baku b
JOIN kategori k
    ON b.id_kategori = k.id_kategori;

-- 2. Menampilkan bahan dengan stok minimum

SELECT
    kode_bahan,
    nama_bahan,
    stok,
    stok_minimum
FROM bahan_baku
WHERE stok <= stok_minimum;

-- 3. Menampilkan riwayat transaksi

SELECT
    t.nomor_transaksi,
    t.tanggal,
    t.jenis,
    p.nama AS nama_petugas,
    b.nama_bahan,
    d.jumlah,
    d.harga_satuan
FROM transaksi t
JOIN pengguna p
    ON t.id_user = p.id_user
JOIN detail_transaksi d
    ON t.id_transaksi = d.id_transaksi
JOIN bahan_baku b
    ON d.id_bahan = b.id_bahan
ORDER BY t.tanggal;

-- 4. Total bahan keluar berdasarkan jenis bahan

SELECT
    b.nama_bahan,
    SUM(d.jumlah) AS total_keluar
FROM detail_transaksi d
JOIN bahan_baku b
    ON d.id_bahan = b.id_bahan
JOIN transaksi t
    ON d.id_transaksi = t.id_transaksi
WHERE t.jenis = 'KELUAR'
GROUP BY b.id_bahan, b.nama_bahan
ORDER BY total_keluar DESC;