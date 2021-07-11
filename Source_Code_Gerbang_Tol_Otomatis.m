function main()
  
    clc
    gol=zeros(1,5); % deklarasi array 5 baris (jumlah golongan di jalan tol = 5)
    z=0;
   
   while z==0 % looping selamanya sampai sistem dimatikan
    x = input("Masukkan golongan: ");
    if(1 <= x && x <= 5) %jalankan program apabila x berada di [1, 5]
    gol = datagolongan(x,gol); % panggil fungsi gol
    fprintf("\n");
    harga1 = harga(x); % panggil fungsi harga
    
    fprintf("\nGolongan %d \n",x);
    fprintf("Harga: %d \n",harga1);  
    
    fprintf("\nSilahkan Tap Kartu E-Toll Anda \n");
    
    Kode_Kartu = input("Masukkan kode kartu: "); %asumsi bukan kartu = 0;
    
   
      while(Kode_Kartu == 0) % selama kode kartu 0, program looping
        fprintf("Akses ditolak \n \n");
        fprintf("Gerbang Tol Tertutup \n \n");
         fprintf("\nGolongan %d \n",x);
        fprintf("Harga: %d \n",harga1);
        fprintf("\nSilahkan Tap Kartu E-Toll Anda \n");
    
        Kode_Kartu = input("Masukkan kode kartu: "); 

      endwhile
    
    Saldo = input("Masukkan saldo: "); 
    
      while(Saldo < harga1) % selama saldo kurang untuk membayar, program looping
        fprintf("\nAkses ditolak \n \n");
        fprintf("Gerbang Tol Tertutup \n \n");
        fprintf("-------------------------------");
        fprintf("\nGolongan %d \n",x);
        fprintf("Harga: %d \n",harga1);
        fprintf("\nSilahkan Tap Kartu E-Toll Anda \n");
    
        Kode_Kartu = input("Masukkan kode kartu: "); 
        Saldo = input("Masukkan saldo: ");        
      endwhile
      
        Saldo = Saldo - harga1;
        fprintf("\nSisa saldo: %d \n \n",Saldo);
    
        Sensor = 0; % sensor mobil terletak setelah palang
      
      while (Sensor == 0) % selama sensor tidak mendeteksi mobil, gerbang tol terus terbuka
        fprintf("Gerbang Tol Terbuka \n \n");
        Sensor = input("Sensor: "); %asumsi sensor tidak mendeteksi mobil = 0
      endwhile
      fprintf("Gerbang Tol Tertutup \n \n");
      fprintf("-------------------------------\n");
    
    else % melarang kendaraan diluar golongan untuk masuk
      fprintf("Maaf Anda dilarang masuk karena diluar golongan yang diperbolehkan \n");
      fprintf("Gerbang Tol Tertutup \n \n");
      fprintf("-------------------------------\n");
    endif
    
    fprintf("Tekan Keyboard untuk melanjutkan menerima input \n");
    penanda = kbhit();
      clc
  endwhile

endfunction



function harga1 = harga(x)
  
  hargagolongan = [16000,23500,23500,31500,31500];
  
  harga1 = hargagolongan(x);
  for(j = 1:1:5)
    fprintf("Harga golongan ke-%d: %d \n",j,hargagolongan(j));
  end
  fprintf("---------------------------------------");
endfunction

function gol = datagolongan(x,gol)

  gol(x) = gol(x) + 1;
  fprintf("---------------------------------------");
  fprintf("\n");
  for(i = 1:1:5)
    fprintf("Data golongan ke-%d: %d \n",i,gol(i));
  end
  
endfunction

