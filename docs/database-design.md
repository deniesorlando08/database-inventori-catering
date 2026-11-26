# Database Design

## DBMS
MySQL dengan storage engine InnoDB.

## Tabel
1. kategori
2. bahan_baku
3. pengguna
4. transaksi
5. detail_transaksi

## Aturan Bisnis
- Kode bahan baku harus unik.
- Stok tidak boleh negatif.
- Jenis transaksi MASUK atau KELUAR.
- Transaksi keluar tidak boleh melebihi stok.
- Satu transaksi dapat memiliki beberapa detail.