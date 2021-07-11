% NIM/Nama   : 16920262/Octavianus Bagaswara Adi
% Tanggal    : 22 Oktober 2020
% Deskripsi  : Menentukan kelas mahasiswa berdasarkan NIM

%pembersihan command window
clc

%proses memasukkan nilai NIM dengan asumsi 001 <= NIM <= 999
NIM = input("Masukkan akhiran NIM: ");

%filter nilai NIM
if(NIM<=100)
    if(mod(NIM,2)==0) %cek genap ganjilnya NIM
        fprintf("Mahasiswa masuk ke kelas K2. \n");
    else %(mod(NIM,2)~=0)
        fprintf("Mahasiswa masuk ke kelas K1. \n");
    end
elseif(NIM<=200)
    if(mod(NIM,2)==0)
        fprintf("Mahasiswa masuk ke kelas K4. \n");
    else %(mod(NIM,2)~=0)
        fprintf("Mahasiswa masuk ke kelas K3. \n");
    end
elseif(NIM<=300)
    if(mod(NIM,2)==0)
        fprintf("Mahasiswa masuk ke kelas K6. \n");
    else %(mod(NIM,2)~=0)
        fprintf("Mahasiswa masuk ke kelas K5. \n");
    end
elseif(NIM<=400)
    if(mod(NIM,2)==0)
        fprintf("Mahasiswa masuk ke kelas K8. \n");
    else %(mod(NIM,2)~=0)
        fprintf("Mahasiswa masuk ke kelas K7. \n");
    end
elseif(NIM<=500)
    if(mod(NIM,2)==0)
        fprintf("Mahasiswa masuk ke kelas K10. \n");
    else %(mod(NIM,2)~=0)
        fprintf("Mahasiswa masuk ke kelas K9. \n");
    end
else %NIM>500
    fprintf("Mahasiswa masuk ke kelas K11. \n");
end
