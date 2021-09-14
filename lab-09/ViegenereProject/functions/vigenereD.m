function plainText = vigenereD(cypherText, key)
% Allocate zero filled vector
plainTextCodes = zeros(1, length(cypherText));
% Check if key contains non alphabet chars
    if nnz(isAlphabetical(key)) ~= length(key)
        error('%s','Key contains non alphabet chars')
    end
    
    %% Main algorithm
    for j = 1 : length(cypherText)
        % Ignore any non alphabet characters
        if ~isAlphabetical(cypherText(j))
            plainTextCodes(j) = double(cypherText(j));
        end

        if isLowerCase(cypherText(j))
            key = lower(key);
            plainTextCodes(j) = double(cypherText(j)) - ( double( key( mod(j-1 , length(key)) + 1 )) - CaseHelper.lowerCaseOffset);
            if (plainTextCodes(j) < CaseHelper.lowerAlphabetCodes(1))
                plainTextCodes(j) = plainTextCodes(j) + length(CaseHelper.lowerAlphabetCodes);
            end
        elseif isUpperCase(cypherText(j))
            key = upper(key);
            plainTextCodes(j) = double(cypherText(j)) - ( double( key( mod(j-1 , length(key)) + 1 )) - CaseHelper.upperCaseOffset);
            if (plainTextCodes(j) < CaseHelper.upperAlphabetCodes(1))
                plainTextCodes(j) = plainTextCodes(j) + length(CaseHelper.upperAlphabetCodes);
            end
        end
        plainText = char(plainTextCodes);
    end
end