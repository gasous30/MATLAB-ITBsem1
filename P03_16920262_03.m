% NIM/Nama  : 16920262/Octavianus Bagaswara Adi
% Tanggal   : 19 November 2020
% Deskripsi : Mengecek apakah kata kedua dapat dibuat dari kata pertama

% pembersihan command windows dan nilai variabel
clc
clear

% deklarasi tabel frekuensi
freq1 = zeros(1,122); % nilai a-z berkisar di antara 97 - 122 menurut fungsi double
freq2 = zeros(1,122);

% input panjang dan kata pertama dengan asumsi hanya terdiri dari huruf a - z
panjang1 = input("Masukkan panjang kata pertama:  ");
kata1 = input("Masukkan kata pertama: ",'s');

% proses memasukkan ke dalam tabel frekuensi
for(i = 1 : 1 : panjang1)
  indeks1(i) = double(kata1(i));
  for(j = 1 : 1 : 122)
   if(indeks1(i) == j)
     freq1(j) = freq1(j) + 1;
   end
  end
end

% input panjang dan kata kedua dengan asumsi hanya terdiri dari huruf a - z
panjang2 = input("Masukkan panjang kata kedua:  ");
kata2 = input("Masukkan kata kedua: ",'s');

% proses memasukkan ke dalam tabel frekuensi
for(i = 1 : 1 : panjang2)
  indeks2(i) = double(kata2(i));
  for(j = 1 : 1 : 122)
    if(indeks2(i) == j)
     freq2(j) = freq2(j) + 1;
    end
  end
end

% pengecekan apakah kata kedua dapat dibentuk dari kata pertama
i = 1;
cek = true;
while(i <= 122 && cek)
  if(freq2(i) > freq1(i))
    fprintf("Kata pertama tidak dapat membentuk kata kedua")
    cek = false;
  elseif(i == 122 && cek == true)
    fprintf("Kata pertama dapat membentuk kata kedua")
  end
i = i + 1;
end