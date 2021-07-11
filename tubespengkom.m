function main()
  clc


    x = input("Masukkan golongan: ");
    
    gol = datagolongan(x);
    fprintf("\n");
    harga = harga(x);
    
    fprintf("\nSilahkan Tap Kartu E-Toll Anda \n");
    
    Kode_Kartu = input("Masukkan kode kartu: "); %asumsi bukan kartu = 0;
    
   
      while(Kode_Kartu == 0)
        fprintf("Akses ditolak \n \n");
        fprintf("Gerbang Tol Tertutup \n \n");
        fprintf("\nSilahkan Tap Kartu E-Toll Anda \n");
    
        Kode_Kartu = input("Masukkan kode kartu: "); %asumsi bukan kartu = 0;

      endwhile
      
    Saldo = input("Masukkan saldo: ");
    
      while(Saldo < harga)
        fprintf("\nAkses ditolak \n \n");
        fprintf("Gerbang Tol Tertutup \n \n");
        fprintf("\nSilahkan Tap Kartu E-Toll Anda \n");
    
        Kode_Kartu = input("Masukkan kode kartu: "); %asumsi bukan kartu = 0;
        Saldo = input("Masukkan saldo: ");        
      endwhile
      
        Saldo = Saldo - harga;
        fprintf("\nSisa saldo: %d \n \n",Saldo);
    
        Sensor = 0;
      
      while (Sensor == 0)
        fprintf("Gerbang Tol Terbuka \n \n");
        Sensor = input("Sensor: "); %asumsi sensor tidak mendeteksi mobil = 0
      endwhile
      
      fprintf("Gerbang Tol Tertutup \n \n");
    
endfunction



function harga = harga(x)
  
  hargagolongan = [16000,23500,23500,31500,31500];
  
  harga = hargagolongan(x);
  for(j = 1:1:5)
    fprintf("Harga golongan ke-%d: %d \n",j,hargagolongan(j));
  end

  
endfunction

function gol = datagolongan(x)
  gol = zeros(1,5);
  

  gol(x) = gol(x) + 1;
  fprintf("\n");
  for(i = 1:1:5)
    fprintf("Data golongan ke-%d: %d \n",i,gol(i));
  end
  
endfunction
