#!/bin/bash

echo "---MENU PENCARIAN FILE---"
echo "1. Cari Bedasarkan Nama"
echo "2. Cari Bedasarkan Ukuran"
echo "3. Cari Bedasarkan Isi"
read -p "Pilih Opsi (1-3):" opsi

case $opsi in
1)
read -p "Masukkan nama file yang dicari:" nama
find . -name "$Nama"
;;
2)
read -p "Masukkan ukuran (contoh: +1M untuk >1MB, -500K untuk 500KB):" ukuran
find . -size "$ukuran"
;;
3)
read -p "Masukkan teks yang dicari:" teks
grep -r "$teks"
;;
*)
echo "Opsi tidak valid!"
;;
esac
