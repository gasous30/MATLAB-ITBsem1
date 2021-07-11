% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 3 Desember 2020
% Deskripsi  : menghitung jarak antarkota

% program dieksekusi dengan aplikasi GNU octave
% KAMUS
% jmlh, jarak = float
% x,y = array
% N, i = int

%deklarasi fungsi utama
function P04_16920262_01()
  clc % pembersihan command windows
  jmlh = 0;
  N = input("Masukkan jumlah kota: "); %input jumlah kota
  for(i = 1:1: N)
  
    fprintf("Masukkan koordinat x kota ke %d: ",i); %input koordinat kota
    x(i) = input("");
    fprintf("Masukkan koordinat y kota ke %d: ",i);
    y(i) = input("");    
  endfor
  jmlh = f(x,y,N); % panggil fungsi utama
  
  fprintf("Jarak totalnya: %.4f \n",jmlh); %cetak jumlah
 
endfunction
% deklarasi fungsi menghitung jarak
function jmlh = f(x,y,N)
  jmlh = 0;
  for(i = 1:1:N-1) %menghitung jarak antarkota
    jarak = ((x(i+1)-x(i))^2 + (y(i+1)-y(i))^2)^(0.5);
    jmlh = jmlh + jarak;
  endfor
endfunction
