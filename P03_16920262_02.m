% NIM/Nama  : 16920262/Octavianus Bagaswara Adi
% Tanggal   : 19 November 2020
% Deskripsi : Membuat barisan yang menaik walaupun input acak

% pembersihan command windows dan nilai variabel
clc
clear

% input nilai N dan deklarasi array cetak
N = input ("Masukkan N: ");
cetak = zeros(1,N);

% input nilai bilangan
for(i = 1 : 1 : N)
  fprintf("Masukkan bilangan ke %d: ",i)
  bil(i) = input("");
  % cek apakah naik atau tidak
  if(i == 1 || bil(i) > max)
    max = bil(i);
    cetak(i) = bil(i);
  end
end

% cetak kalau naik
for(i = 1 : 1 : N)
  if(cetak(i) ~= 0)
    fprintf("%d ",cetak(i));
  end
end


