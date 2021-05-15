%encryptLowerCaseText Checks the letter to see if it is lower-case
%
%   USAGE
%       output = encryptLowerCaseText('lowercasetext','key')
%       output = encryptLowerCaseText('lowercasetext','key', 'Info', true);
%
%   INPUT PARAMETERS
%       lowerCasePlainText - Text to encrypt (must be lowercase)
%       key - Key to encrypt with, must be of less length than plain text
%       options - Additional options
%           * Info - set to true to output informational output if
%                    function output is suppressed with " ; "
%
%   OUTPUT PARAMETERS
%       output - Logical true or false value ( 1 or 0 )
%
%   Author          : Stjepan Mamusa
%   Email           : smamusa@hotmail.com
%   Date-Created    : May 2021
%   Date-Modified   : May 2021

function output = encryptLowerCaseText(lowerCasePlainText, key, options)
    arguments
        lowerCasePlainText (1,:) char {mustBeText(lowerCasePlainText), mustBeLowerOnly(lowerCasePlainText)}
        key (1,:) char {keyLengthValidator(lowerCasePlainText, key), mustBeText(key)}
        options.Info (1,1) logical = 0
    end
    % Pre-allocate empty vector
    cypherTextLowerCodes = zeros(1, length(lowerCasePlainText));

    for i = 1 : length(lowerCasePlainText)
        cypherTextLowerCodes(i) = double(lowerCasePlainText(i)) + ( double( key( mod(i-1 , length(key)) + 1 )) - CaseHelper.lowerCaseOffset);
        if (cypherTextLowerCodes(i) > CaseHelper.lowerAlphabetCodes(end))
            cypherTextLowerCodes(i) = cypherTextLowerCodes(i) - length(CaseHelper.lowerAlphabetCodes);
        end
    end

    output = char(cypherTextLowerCodes);

    if (options.Info)
        fprintf("Plain text : %s\n", lowerCasePlainText);
        fprintf("Key text : %s\n", key);
        fprintf("Cypher text : %s\n", char(cypherTextLowerCodes));
    end
    
end
% End of function