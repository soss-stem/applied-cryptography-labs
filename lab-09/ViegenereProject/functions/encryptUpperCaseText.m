%encryptUpperCaseText Checks the letter to see if it is lower-case
%
%   USAGE
%       output = encryptUpperCaseText('UPPERCASETEXT','KEY')
%       output = encryptUpperCaseText('UPPERCASETEXT','KEY', 'Info', true);
%
%   INPUT PARAMETERS
%       upperCasePlainText - Text to encrypt (must be lowercase)
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

function output = encryptUpperCaseText(upperCasePlainText, key, options)
    arguments
        upperCasePlainText (1,:) char {mustBeText(upperCasePlainText), mustBeUpperOnly(upperCasePlainText)}
        key (1,:) char {VigenereHelper.validateKeyLength(upperCasePlainText, key), mustBeText(key)}
        options.Info (1,1) logical = 0
    end
    % Pre-allocate empty vector
    cypherTextUpperCodes = zeros(1, length(upperCasePlainText));

    for i = 1 : length(upperCasePlainText)
        cypherTextUpperCodes(i) = double(upperCasePlainText(i)) + ( double( key( mod(i-1 , length(key)) + 1 )) - CaseHelper.upperCaseOffset);
        if (cypherTextUpperCodes(i) > CaseHelper.upperAlphabetCodes(end))
            cypherTextUpperCodes(i) = cypherTextUpperCodes(i) - length(CaseHelper.upperAlphabetCodes);
        end
    end

    output = char(cypherTextUpperCodes);

    if (options.Info)
        fprintf("Plain text : %s\n", upperCasePlainText);
        fprintf("Key text : %s\n", key);
        fprintf("Cypher text : %s\n", char(cypherTextUpperCodes));
    end
    
end
% End of function