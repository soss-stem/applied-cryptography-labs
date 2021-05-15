% Function for checking if text contains lower or upper case chars
%{
    Author : Stjepan Mamusa
    Email  : smamusa@hotmail.com
    Date-Created: May 2021
    Date-Modified: May 2021
%}
function output = isWrongCaseInText(text,textCase)
    output = false;

    for i = 1 : length(text)

        if (textCase == "lower")
            if (CaseHelper.isLowerCase(text(i)))
                output = true;
                break;
            end
        end

        if (textCase == "upper")
            if (CaseHelper.isUpperCase(text(i)))
                output = true;
                break;
            end
        end

    end
    
end