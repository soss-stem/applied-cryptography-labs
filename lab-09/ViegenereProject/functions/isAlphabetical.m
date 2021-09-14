%isAlphabetical Checks if a char is alphabetical or not
%   USAGE
%       output = isWrongCaseInText('texttocheck','upper') 
%   Checks to see if there is an upper-case character in text 'texttocheck' 
%   this would return logical 0
%
%       output = isWrongCaseInText('texttocheck','lower')
%   Checks to see if there is an lower-case character in text 'texttocheck'
%   this would return logical 1
%
%       output = isWrongCaseInText('textTocheck','upper')
%   Checks to see ifthere is an upper-case character in text 'textTocheck'
%   this would return logical 1
%
%       output = isWrongCaseInText('TeXTTOCHECK','lower')
%   Checks to see if there is an lower-case character in text 'TeXTTOCHECK'
%   this would return logical 1
%
%   INPUT PARAMETERS
%       text - A string representation of text to check e.g. : 'ThisIsText'
%       textCase - Can be either 'upper' or 'lower' - case to check for
%     
%   OUTPUT PARAMETERS
%       output - Logical true or false value ( 1 or 0 )
%
%   Author          : Stjepan Mamusa
%   Email           : smamusa@hotmail.com
%   Date-Created    : May 2021
%   Date-Modified   : May 2021

function output = isAlphabetical(characterList)
    output = zeros(1, length(characterList));
        for i = 1 : length(characterList)
                output(i) = isUpperCase(characterList(i)) || isLowerCase(characterList(i));
        end
end