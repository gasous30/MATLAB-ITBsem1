clc
clear

A = 2;
B = 11;
i = 2;

while A <= B
    while mod(A,i) ~= 0
        i = i + 1;
    end
    
    if i == A
        fprintf("%d \n",A);
    end
      
 A = A + 1;
 i = 2;
end

