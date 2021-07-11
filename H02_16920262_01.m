% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 3 November 2020 (submit), 5 November 2020 (praktikum)
% Deskripsi  : Mencetak 1 sampai N dalam satu baris

%Kamus :
% N = int
% i = int

%pembersihan command window
clc

%proses pemasukan nilai N
N = input("Masukkan angka: "); %asumsi N > 0 dan merupakan bilangan bulat

%proses pencetakan angka
for (i = 1 : 1 : N)
  fprintf("%d ",i)
endfor