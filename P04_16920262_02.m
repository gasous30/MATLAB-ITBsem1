% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 3 Desember 2020
% Deskripsi  : operasi pertukaran matriks N x N

% program dieksekusi dengan aplikasi GNU octave
% KAMUS
 % A = array
 % i,j,tukar1,tukar2 = int
 % x = string

% pembersihan command windows
clc
% input nilai N
N = input("Masukkan nilai N: ");
%input elemen matriks
for (i = 1:1:N)
  for (j = 1:1:N)
     fprintf("Masukkan elemen baris %d kolom %d: ",i,j);
     A(i,j) = input("");
  endfor
endfor
%input apa yang ditukar
x = input("Apa yang ditukar? (baris/kolom): ",'s');
tukar1 = input("Masukkan indeks baris/kolom pertama: ");
tukar2 = input("Masukkan indeks baris/kolom kedua: ");

%proses penukaran
if (strcmp(x,"baris"))
  for(j = 1:1:N)
    Z(1,j) = A(tukar1,j); % variabel sementara untuk menyimpan nilai matriks
    A(tukar1,j) = A(tukar2,j);
    A(tukar2,j) = Z(1,j);
  endfor
  for(i = 1:1:N) %cetak matriks
    for(j = 1:1:N)
      fprintf("%d ",A(i,j));
    endfor
  fprintf("\n");
  endfor

else
  for(i = 1:1:N)
    Z(i,1) = A(i,tukar1);
    A(i,tukar1) = A(i,tukar2);
    A(i,tukar2) = Z(i,1);
  endfor
  for(i = 1:1:N)
    for(j = 1:1:N)
      fprintf("%d ",A(i,j));
    endfor
  fprintf("\n");
  endfor

endif
