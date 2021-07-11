% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 3 Desember 2020
% Deskripsi  : menghitung integral tentu

% program dieksekusi dengan aplikasi GNU octave

function P04_16920262_03()
  clc
  clear
  
  a = input("Masukkan nilai a: ");
  b = input("Masukkan nilai b: ");
  n = input("Masukkan nilai n: ");  
  
  f0 = f(a);
  fn = f(b);
  h = (b-a)/n;
  
  sum = 0;
  for(r = 1:1:n-1)
    x = a + r*h;
    
    sum = sum + f(x);
  endfor
  
  hasil = h/2*(f0 + fn + 2*sum);
  
  fprintf("Hasilnya adalah %.5f",hasil);
endfunction

function y = f(x);
  y = x*x*x*x + 3*x*x*x + 5*x*x + x + 8;
endfunction
