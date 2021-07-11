% NIM / Nama  : 16920262 / Octavianus Bagaswara Adi
% Tanggal     : 5 November 2020
% Deskripsi   : menghitung nilai maksimum dan minimum

% Kamus :
% N, max, min, i, x = int

% pembersihan command windows
clc
clear

% proses input N
N = input("Masukkan N: ");
max = -99999; %asumsikan nilai input > -99999
min = 99999; %asumsikan nilai input < 99999

% proses pengulangan
for (i = 1:1:N)
  fprintf("Masukkan bilangan ke %d: ",i);
  x = input(""); % input data 
  
  if(x < min) %cek minimum
    min = x;
  elseif(x > max) %cek maksimum
    max = x;
  end
  
end

% cetak max dan min
fprintf("Hasil Tuan Mor: %d \n",max+min);
