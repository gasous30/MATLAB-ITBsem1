% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 30 November 2020 (submit), 3 Desember 2020 (praktikum)
% Deskripsi  : Menerima N dan M, membaca matriks A berukuran N x M dan menuliskan isi matriks serta menghitung banyak bil positif

% program dieksekusi dengan aplikasi GNU octave

% Kamus :
% i,j,count = int
% A = matriks N x M 


% pembersihan command window
  clc

% input N dan M
  N = input("Masukkan N: ");
  M = input("Masukkan M: ");
  count = 0;
  
% pengulangan pemanggilan fungsi f(x) dari A sampai B
  for( i = 1:1:N )
    for( j = 1:1:M )
      fprintf("Masukkan nilai A[%d][%d]: ",i,j);
      A(i,j) = input("");
      if(A(i,j) > 0)
        count = count+1;
      endif
    endfor
  endfor
  
  fprintf("Ada %d bilangan positif di matriks. \n",count);
  
  for( i = 1:1:N )
    for( j = 1:1:M )
      fprintf("%d ",A(i,j));
    endfor
    fprintf("\n");
  endfor

