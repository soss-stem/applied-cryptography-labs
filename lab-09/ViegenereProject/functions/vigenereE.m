function cypherText = vigenereE(plainText,key)
% Allocate zero filled vector
cypherCodes = zeros(1, length(plainText));
% Check if key contains non alphabet chars
if nnz(isAlphabetical(key)) ~= length(key)
    error('%s','Key contains non alphabet chars')
end

%% Main algorithm
for j = 1 : length(plainText)
    % Ignore any non alphabet characters
    if ~isAlphabetical(plainText(j))
        cypherCodes(j) = double(plainText(j));
    end

        if isLowerCase(plainText(j))
            key = lower(key);
            cypherCodes(j) = double(plainText(j)) + ( double( key( mod(j-1 , length(key)) + 1 )) - CaseHelper.lowerCaseOffset);
            if (cypherCodes(j) > CaseHelper.lowerAlphabetCodes(end))
                cypherCodes(j) = cypherCodes(j) - length(CaseHelper.lowerAlphabetCodes);
            end
        elseif isUpperCase(plainText(j))
            key = upper(key);
            cypherCodes(j) = double(plainText(j)) + ( double( key( mod(j-1 , length(key)) + 1 )) - CaseHelper.upperCaseOffset);
            if (cypherCodes(j) > CaseHelper.upperAlphabetCodes(end))
                cypherCodes(j) = cypherCodes(j) - length(CaseHelper.upperAlphabetCodes);
            end
        end
        cypherText = char(cypherCodes);
end