%isLowerCase Checks the letter to see if it is lower-case
%
%   USAGE
%       output = isLowerCase('A')
%
%   INPUT PARAMETERS
%       letter - A single letter (char) to evaluate
%
%   OUTPUT PARAMETERS
%       output - Logical true or false value ( 1 or 0 )
%
%   Author          : Stjepan Mamusa
%   Email           : smamusa@hotmail.com
%   Date-Created    : May 2021
%   Date-Modified   : May 2021

function output = isLowerCase(letter)
    arguments
        letter (1,1) {mustBeA(letter,"char")}
    end
    
output = false;
    if ( letter >= 97 && letter <= 122)
        output = true;
    end
end