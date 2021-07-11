% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 16 November 2020 (submit), 19 November 2020 (praktikum)
% Deskripsi  : Menerima bilangan sebanyak N dan mencetaknya secara terbalik

% program dieksekusi dengan aplikasi GNU octave

% Kamus :
% N = int
% a = array 1 baris N kolom
% i = int

% pembersihan command window
clc

% input nilai N sebagai jumlah kolom array dari a
N = input("Masukkan N: ");

% deklarasi array a dengan jumlah baris 1 dan jumlah kolom N
a = zeros(1,N);

% input nilai ke dalam array
for (i = 1 : 1 : N)
  a(i) = input("");
end

% proses pencetakan nilai dalam array secara terbalik
fprintf("Hasil dibalik: \n");
for (i = N : -1 : 1)
  fprintf("%d \n",a(i));
end
