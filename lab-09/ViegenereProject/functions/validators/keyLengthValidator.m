%keyLengthValidator Checks the letter to see if it is lower-case
%
%
%   Author          : Stjepan Mamusa
%   Email           : smamusa@hotmail.com
%   Date-Created    : May 2021
%   Date-Modified   : May 2021

% Start of function
function keyLengthValidator(text, key)
        if (length(key) > length(text))
            error('Encryption key has to be of lenght less or equal to the length of plain text.');
        end
end
% End of function