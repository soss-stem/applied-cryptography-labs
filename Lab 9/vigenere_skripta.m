

plaintext = 'dota';
plaintext_numeric = double(plaintext);
key = 'lol';
key_num = double(key) - 97;
plaintext_positional = plaintext_numeric - 97; % Umanjeno za poziciju slova a (malo a) u ASCII tablici
cyphertext_numeric = zeros(1, length(plaintext));

for x = 1 : length(plaintext)
    cyphertext_numeric(x) = plaintext_numeric(x) + key_num ( mod(x-1 , length(key)) + 1 );
    if (cyphertext_numeric(x) > 122)
        cyphertext_numeric(x) = cyphertext_numeric(x) - 26;
    end
end

char(cyphertext_numeric)
