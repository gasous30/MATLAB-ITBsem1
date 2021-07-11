% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 30 November 2020 (submit), 3 Desember 2020 (praktikum)
% Deskripsi  : Menerima A dan B, dan menuliskan dari f(A) sampai f(B)

% program dieksekusi dengan aplikasi GNU octave

% Kamus :
% A,B,x,y = int
% f(x) = fungsi 

% deklarasi fungsi utama
function main()
% pembersihan command window
  clc

% input A dan B
  A = input("Masukkan A: ");
  B = input("Masukkan B: ");

% pengulangan pemanggilan fungsi f(x) dari A sampai B
  for( x = A:1:B )
    fprintf("f(%d) = %d \n",x,f(x));
  endfor

endfunction

% deklarasi fungsi f(x)
function y = f(x)
  y = x^2 - 2*x + 5;
endfunction
