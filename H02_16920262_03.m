% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 3 November 2020 (submit), 5 November 2020 (praktikum)
% Deskripsi  : Mencari tahu apakah X merupakan bilangan prima

%Kamus :
% X = int
% i = int

%pembersihan command window
clc

%proses pemasukan nilai X
X = input("Masukkan X: "); %asumsikan X >= 0 dan merupakan bilangan bulat
i = 2;

%mengecek apakah X bilangan prima dengan membaginya dengan 2 sampai X-1
while(i < X)
  if(mod(X,i) == 0) 
    i = X+1; %mengakhiri while apabila X bukan prima
  else
    i = i + 1; %meneruskan while hingga i = X
  endif
endwhile

%proses pencetakan 
if(i == X)
  fprintf("%d adalah bilangan prima \n",X); 
else 
  fprintf("%d bukan bilangan prima \n",X);  
endif  