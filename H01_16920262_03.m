% NIM/Nama  : 16920262 / Octavianus Bagaswara Adi
% Tanggal   : Senin, 19 Oktober 2020 (submit), 22 Oktober 2020 (praktikum) 
% Deskripsi : Menentukan bilangan positif ganjil, positif genap, negatif,
% serta nol

%KAMUS
%x = int

%pembersihan command line
clc

%proses input data
x = input("Masukkan X: ");

%proses pemilihan positif, negatif, dan nol bilangan x
if (x<0)
    fprintf("X adalah bilangan negatif");
elseif (x>0)
    % proses pemilihan ganjil genap bil x
    if(mod(x,2)==0)
        fprintf("X adalah bilangan positif genap");
    else
        fprintf("X adalah bilangan positif ganjil");
    end
else
    fprintf("X adalah bilangan nol")
end
