x = primes(randi(1000));
l = length(x);
p = x(randi(l));

while 1
    g = randi(p - 2, 'double') + 2;
    if primitivnikorijen(g,p) == 1
        break
    end
end

Xa = randi(p - 1, 'double');
Xb = randi(p - 1, 'double');
YA = powermod(g,Xa,p);
YB = powermod(g,Xb,p);

AK = powermod(YB,Xa,p);

BK = powermod(YA,Xb,p);