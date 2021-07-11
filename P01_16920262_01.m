% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 22 Oktober 2020
% Deskripsi  : Membuat program penghitungan biaya ojol untuk Tuan Mor

%pembersihan command window
clc

%proses memasukkan nilai jarak dengan asumsi jarak >= 0
jarak = input("Masukkan jarak destinasi: ");

%penghitungan biaya
biaya = jarak*2000;

%filter nilai minimum
if(biaya<=4000)
    fprintf("Tuan Mor harus membayar 4000 rupiah.\n");
else %biaya >4000
    fprintf("Tuan Mor harus membayar %d rupiah. \n",biaya);
end
