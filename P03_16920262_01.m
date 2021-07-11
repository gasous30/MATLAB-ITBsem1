% NIM/Nama  : 16920262/Octavianus Bagaswara Adi
% Tanggal   : 19 November 2020
% Deskripsi : Mengecek diskon terbesar

% pembersihan command windows dan nilai variabel
clc
clear

% Kamus
% N,i,barangnya,diskonterbesar = int
% hargabarang, diskonbarang = array 1 baris N kolom

% input banyak barang
N = input("Masukkan banyak barang: ");

% input harga awal barang
for(i = 1 : 1 : N)
  fprintf("Masukkan harga awal barang ke-%d: ",i);
  hargabarang(i) = input("");
end

% deklarasi array harga barang setelah diskon dan diskon terbesar
diskonbarang = zeros(1,N);
diskonterbesar = diskonbarang(1);

% proses input besar diskon dan perhitungan diskon
for(i = 1 : 1 : N)
  fprintf("Masukkan besar diskon (dalam persen) barang ke-%d: ",i);
  diskonbarang(i) = input("");
  diskonbarang(i) = diskonbarang(i) * hargabarang(i) / 100;
  % pengecekan harga diskon untuk mencari diskon terbesar
  if(diskonbarang(i) > diskonterbesar)
    diskonterbesar = diskonbarang(i);
    barangnya = i;
  end
end

% cetak harga barang dengan diskon terbesar
fprintf("Barang %d memiliki diskon paling besar yaitu %d",barangnya,diskonterbesar);