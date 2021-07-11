% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 30 November 2020 (submit), 3 Desember 2020 (praktikum)
% Deskripsi  : Menerima N dan menuliskan matriks segitiga pascal N x N

% program dieksekusi dengan aplikasi GNU octave

% Kamus :
% N,i,j = int
% A = matriks N x N



% pembersihan command window
  clc
  
  
% menerima input N  
  N = input("Masukkan N: ");
% deklarasi matriks A berukuran N x N dengan nilai 1 
  A = ones(N,N);
% proses penghitungan matriks segitiga Pascal  
  for(i = 2:1:N)
    for(j = 2:1:N)
      A(i,j) = A(i,j-1) + A(i-1,j);
    endfor
  endfor
% proses pencetakan matriks A  
  for(i=1:1:N)
    for(j = 1:1:N)
      fprintf("%d ",A(i,j));
    endfor
    fprintf("\n");
  endfor