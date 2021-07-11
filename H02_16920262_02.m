% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 3 November 2020 (submit), 5 November 2020 (praktikum)
% Deskripsi  : Mencetak bilangan 10^x terkecil yang lebih dari N

%Kamus :
% N = int
% i = int
% a = int

%pembersihan command window
clc

%proses pemasukan nilai N
N = input("Masukkan N: "); %asumsikan N >= 0 dan merupakan bilangan bulat
a = 0;
i = 10^a;

%proses pencarian bilangan 10^x 
while(i <= N)
  a = a+1;
  i = 10^a;
endwhile

%proses pencetakan angka
fprintf("%d \n",i);