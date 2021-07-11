% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 22 Oktober 2020
% Deskripsi  : Menghitung waktu lama Tuan Mor sudah berlari

%pembersihan command window
clc

%proses pemasukan nilai waktu mulai berlari
fprintf("Masukkan waktu mulai! \n");
jam1 = input("Jam     : "); %asumsi jam1 >= 0
menit1 = input("Menit   : "); %asumsi 0 <= menit1 < 60
detik1 = input("Detik   : "); %asumsi 0 <= detik1 < 60
waktu1 = jam1*3600+menit1*60+detik1;

%proses pemasukan nilai waktu selesai berlari dengan asumsi waktu mulai < waktu selesai 
fprintf("Masukkan waktu selesai! \n");
jam2 = input("Jam     : "); %asumsi jam2 >= 0
menit2 = input("Menit   : "); %asumsi 0 <= menit2 < 60
detik2 = input("Detik   : "); %asumsi 0 <= detik2 < 60
waktu2 = jam2*3600+menit2*60+detik2;

waktutotal = waktu2 - waktu1;

jamtotal = waktutotal/3600 - mod(waktutotal,3600)/3600;
menittotal = mod(waktutotal,3600)/60 - mod(mod(waktutotal,3600),60)/60;
detiktotal = mod(waktutotal,60); 

if(jamtotal ~= 0)
    fprintf("Tuan Mor berlari selama %d Jam %d Menit %d Detik. \n",jamtotal,menittotal,detiktotal);
else %jamtotal == 0
    if(menittotal ~=0) 
        fprintf("Tuan Mor berlari selama %d Menit %d Detik. \n",menittotal,detiktotal);
    else %menittotal == 0
        fprintf("Tuan Mor berlari selama %d Detik. \n",detiktotal);
    end
end

        

