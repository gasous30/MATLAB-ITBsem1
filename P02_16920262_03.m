% NIM / Nama  : 16920262 / Octavianus Bagaswara Adi
% Tanggal     : 5 November 2020
% Deskripsi   : menghitung panjang substring terpanjang yang berisi 0 saja

% Kamus :
% N, i = int

% pembersihan command windows
clc
clear

% proses input bilangan
N = input("Masukkan N: ");
s = "1";
count = 1; 

for( i = 1:1:N )
  s1 = s; 
  fprintf("Masukkan karakter string ke %d: ",i);
  s = input("",'s');

  if(s=="0" && s1 == "0")
    net = 1;
  else
    net = 0;
    count = 1;
  end
count = count + net;
end

  fprintf("0 terpanjang: %d karakter \n",count);
