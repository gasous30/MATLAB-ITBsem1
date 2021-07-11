% NIM / Nama  : 16920262 / Octavianus Bagaswara Adi
% Tanggal     : 5 November 2020
% Deskripsi   : mengecek bilangan kelipatan 3

% Kamus :
% N, digit, jumlah = int

% pembersihan command windows
clc

% proses input bilangan
N = input("Masukkan bilangan: ");
jumlah = 0;

%proses pengulangan
while( N > 0 )
  digit = mod(N,10); %mengambil digit terakhir
  jumlah = jumlah + digit; %menghitung jumlah digit
  N = (N/10) - (mod(N,10)/10); %memangkas digit terakhir
end

%proses pencetakan
if(mod(jumlah,3) == 0)
  fprintf("%d habis dibagi 3, maka kelipatan 3",jumlah);
else 
  fprintf("%d tidak habis dibagi 3, maka bukan kelipatan 3",jumlah);
end