%mustBeUpperOnly Checks the argument for wrong case
%
%
%   Author          : Stjepan Mamusa
%   Email           : smamusa@hotmail.com
%   Date-Created    : May 2021
%   Date-Modified   : May 2021

% Start of function
function mustBeUpperOnly(arg)
    if isWrongCaseInText(arg,'lower')
        error('%s','Input text must be uppercase only')
    end
end
% End of function