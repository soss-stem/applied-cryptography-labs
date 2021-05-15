% Elipticna krivulja    y^2 ≡ x^3 + ax + b (mod p)
%                       y^2 ≡ x^3 + 2x + 2 (mod 17)
% generator G1 = (5, 1)

G1 = [5, 1];
XY = randi(10e5) * G1;
Xg = XY(1,1);
Yg = XY(1,2);
a = 2;
b = 2;
p = 17; %modul