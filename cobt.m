  clc

  
  hex = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
  
  A = 26;
  
  i = mod(26,16);
  dec1 = hex(i+1);
  j = floor(26/16);
  pul1 = hex(j+1);
  
  z = [pul1,dec1];
  disp(z);