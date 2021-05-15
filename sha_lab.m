%Inicijalizacija varijabli
h0 = de2bi( 0x6 );
h1 = de2bi( 0xE );
h2 = de2bi( 0x9 );
h3 = de2bi( 0x1 );
h4 = de2bi( 0xC );

m = de2bi( 0x3C76284A8115ADCB );
rjesenje = de2bi( 0x55003 );

% binarno =  de2bi(m);

if length(m) > 64
    disp('Poruka je veca od 64 bita');
    cancel;
end

fprintf('Duljina poruke je %d bita - dodaje se %d bita\n', length(m), 64 - length(m));

while length(m) < 64
    m = horzcat(0,m);
end

%Inicijalizacija hash vrijednosti 
a = h0; 
b = h1;
c = h2;
d = h3;
e = h4;

for i = 1  : 16
    
    if (0 < i) &&  ( i <= 4)
        f = ( b & c ) | ( ~b & d );
        k = 0x5;
        
    elseif ( 4 < i ) && ( i <= 8 )
       f = xor( b , xor(c , d) );
       k = 0x6;
       
    elseif ( 8 < i ) && ( i <= 12)
        f = (b & c) | ( b & d) || ( c & d);
        k = 0x8;
        
    elseif ( 12 < i ) && ( i <= 16)
        f = xor( b , xor(c , d) );
        k = 0xC;
    end
    
    temp = bitshift(a,1) + f + e + k + m(i);
    e = d;
    d = c;
    c = bitshift(b,1);
    b = a;
    a = temp;
    
    h0 = h0 + a;
    h1 = h1 + b;
    h2 = h2 + c;
    h3 = h3 + d;
    h4 = h4 + e;

end
