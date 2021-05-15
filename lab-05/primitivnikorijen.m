function [x] = primitivnikorijen(g,p)
x = 0;
A = zeros(1,p-1);

for i = 1 : p - 1
    A(i) = powermod(g,i,p);
end
if length(unique(A)) == p - 1
    x = 1;
end
