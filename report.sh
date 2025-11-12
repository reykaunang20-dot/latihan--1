#!/bin/bash
touch report.txt
echo "---LAPORAN FILE SISTEM---" >> report.txt
echo "=========================" >> report.txt
echo "" >> report.txt
echo "Jumlah File di Setiap Folder : " >> report.txt
ls -R | grep ":$" | wc -l >> report.txt

echo "" >> report.txt
echo "Ukuran Total Direktori (dalam KB) : " >> report.txt
du -sh * >> report.txt

echo "" >> report.txt
echo "Daftar 3 File/Folder Pertama : " >> report.txt
ls -lh | head -n 3 >> report.txt

echo "" >> report.txt
echo "Jumlah Total Baris Semua File Documents : " >> report.txt
cat documents/*.doc | wc -l >> report.txt

echo "" >> report.txt
echo "Jumlah Baris Teks Semua File Images : " >> report.txt
cat images/*.jpg | wc -l >> report.tx

echo "" >> report.txt
echo "Jumlah Baris Teks Semua File Archives : " >> report.txt
cat archives/*.zip | wc -l >> report.txt

echo "" >> report.txt
echo "Jumlah Baris Teks Semua File Logs : " >> report.txt
cat logs/*.log | wc -l >> report.txt

echo "" >> report.txt
echo "Laporan dibuat Pada : $(date)" >> report.txt

echo "" >> report.txt
echo "---Laporan Selesai dibuat!---" >> report.txt
