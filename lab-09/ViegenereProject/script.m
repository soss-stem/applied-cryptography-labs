% lowerCasePlainText = 'dota';
% key = 'ab';

lowerCasePlainText = 'dota';
plainTextCodes = double(lowerCasePlainText);
key = 'lol';

% Pre-allocate empty vector
cypherTextLowerCodes = zeros(1, length(lowerCasePlainText));

for i = 1 : length(lowerCasePlainText)
    cypherTextLowerCodes(i) = double(lowerCasePlainText(i)) + ( double( key( mod(i-1 , length(key)) + 1 )) - CaseHelper.lowerCaseOffset);
    if (cypherTextLowerCodes(i) > CaseHelper.lowerAlphabetCodes(end))
        cypherTextLowerCodes(i) = cypherTextLowerCodes(i) - length(CaseHelper.lowerAlphabetCodes);
    end
end

cypherTextLower = char(cypherTextLowerCodes)

plainTextLowerCodes = zeros(1, length(cypherTextLower));

for i = 1 : length(cypherTextLower)
    plainTextLowerCodes(i) = double(cypherTextLower(i)) - ( double( key( mod(i-1 , length(key)) + 1 )) - CaseHelper.lowerCaseOffset);
     if (plainTextLowerCodes(i) < CaseHelper.lowerAlphabetCodes(1))
        plainTextLowerCodes(i) = plainTextLowerCodes(i) + length(CaseHelper.lowerAlphabetCodes);
    end
end

plainTextLower = char(plainTextLowerCodes)