%isUpperCase Checks the letter to see if it is upper-case
%{
    Author : Stjepan Mamusa
    Email  : smamusa@hotmail.com
    Date-Created: May 2021
    Date-Modified: May 2021
%}
function output = isUpperCase(letter)
    arguments
        letter (1,1) {mustBeA(letter,"char")}
    end
    
output = false;
    if ( letter >= 65 && letter <= 90)
        output = true;
    end
end

