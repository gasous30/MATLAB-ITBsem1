% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 16 November 2020 (submit), 19 November 2020 (praktikum)
% Deskripsi  : Mengecek apakah suatu kata merupakan palindrom atau tidak

% program dieksekusi dengan aplikasi GNU octave

% Kamus :
% kata, kataterbalik = string
% i,j = input

% pembersihan command window dan nilai variabel
clc
clear

kata = input("Masukkan kata: ",'s'); %asumsikan input hanya dari (a - z)

for(i = length(kata):-1:1)
  j = length(kata) + 1 - i;
  kataterbalik(j) = kata(i);
end

if(kata == kataterbalik)
  fprintf("%s adalah palindrom",kata);
else
  fprintf("%s bukan palindrom", kata);
end