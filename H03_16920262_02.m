% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 16 November 2020 (submit), 19 November 2020 (praktikum)
% Deskripsi  : Mengecek apakah array B merupakan anagram dari array A atau tidak

% program dieksekusi dengan aplikasi GNU octave

% Kamus :
% NA = int
% NB = int
% a,b = int
% A = array 1 baris NA kolom
% B = array 1 baris NB kolom
% freqA, freqB = tabel frekuensi untuk A dan B dengan array 1 baris 10 kolom
% countA, count B = int

% pembersihan command window dan nilai variabel
clc
clear

% input banyak elemen dari array A
NA = input("Masukkan banyaknya elemen A: ");
% deklarasi tabel frekuesi dari array A, dengan asumsi nilai elemen > 0 && <= 10
freqA = zeros(1,10);

% proses input nilai elemen A
for(a = 1 : 1 : NA)
  fprintf("Masukkan elemen A ke-%d: ",a);
  A(a) = input("");
  
  % proses input tabel frekuensi A
  for(countA = 1:1:10)
    if(A(a) == countA)
      freqA(countA) = freqA(countA) + 1;
    end
  end
end

% input banyak elemen dari array A
NB = input("Masukkan banyaknya elemen B: ");
% deklarasi tabel frekuesi dari array A, dengan asumsi nilai elemen > 0 && <= 10
freqB = zeros(1,10);

% proses input nilai elemen A
for(b = 1 : 1 : NB)
  fprintf("Masukkan elemen A ke-%d: ",b);
  B(b) = input("");

  % proses input tabel frekuensi A  
  for(countB = 1:1:10)
    if(B(b) == countB)
      freqB(countB) = freqB(countB) + 1;
    end
  end
end

% proses pengecekan apakah B merupakan anagram dari A atau bukan
if(freqB == freqA)
  fprintf("B adalah anagram dari A");
else 
  fprintf("B bukan anagram dari A");
end


