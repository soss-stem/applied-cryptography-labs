%mustBeLowerOnly Checks the argument for wrong case
%
%
%   Author          : Stjepan Mamusa
%   Email           : smamusa@hotmail.com
%   Date-Created    : May 2021
%   Date-Modified   : May 2021

% Start of function
function mustBeLowerOnly(arg)
    if isWrongCaseInText(arg,'upper')
        error('%s','Input text must be lowercase only')
    end
end
% End of function