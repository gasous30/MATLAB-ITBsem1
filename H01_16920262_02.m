% NIM/Nama  : 16920262 / Octavianus Bagaswara Adi
% Tanggal   : Senin, 19 Oktober 2020 (submit), 22 Oktober 2020 (praktikum)
% Deskripsi : membuat program kalkulator sederhana

%KAMUS
%x = int
%y = int
%o = string
%z = int

%pembersihan command line
clc

% proses input data
x = input("Masukkan angka pertama: ");
y = input("Masukkan angka kedua: ");
o = input("Masukkan operator: ",'s');

% proses pemilihan operator + - x / %
if(o == "+")
    z = x + y;
    fprintf("%d %s %d = %d",x,o,y,z);
elseif(o == "-")
    z = x - y;
    fprintf("%d %s %d = %d",x,o,y,z);
elseif(o == "*")
    z = x * y;
    fprintf("%d %s %d = %d",x,o,y,z);
elseif(o == "/")
    z = floor(x / y);
    fprintf("%d %s %d = %d",x,o,y,z);
elseif(o == "%")
    z = mod(x,y);
    fprintf("%d %s %d = %d",x,o,y,z);
end
