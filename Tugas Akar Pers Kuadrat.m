%Program Menentukan akar persamaan kuadrat
% menentukan akar dari persamaan kuadrat

%{
KAMUS
a = float
b = float
c = float
D = float 
x1, x2 = float
%}

%pembersihan command line
clc

fprintf("Program menentukan akar-akar dari persamaan ax^2 + bx + c = 0 \n")

a = input("Masukkan nilai a: ");
b = input("Masukkan nilai b: ");
c = input("Masukkan nilai c: ");

D = b^2 - 4*a*c;

if(D>0)
    x1 = (-b+sqrt(D))/(2*a);
    x2 = (-b-sqrt(D))/(2*a); 
    fprintf("Akar-akar dari persamaan kuadrat ada 2, yaitu %.2f dan %.2f",x1,x2);
elseif(D=0)
    x1 = (-b+sqrt(D))/(2*a);
    fprintf("Akar-akar dari persamaan kuadrat ada 1, yaitu %.2f",x1);
    