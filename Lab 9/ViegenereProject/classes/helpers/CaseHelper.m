classdef CaseHelper
    % Author - Stjepan Mamusa - smamusa@hotmail.com
    % CaseHelper Class containing helper functions for letter cases
    % This is a simple holder class
    
    %Constant properties with public getter
    % Start of props
    properties (Constant, GetAccess = public)
        lowerAlphabetCodes = 97:1:122;
        lowerAlphaBet = char(CaseHelper.lowerAlphabetCodes);
        lowerCaseOffset = 97;
        
        upperAlphabetCodes = 65:1:90;
        upperAlphabet = char(CaseHelper.upperAlphabetCodes);
        upperCaseOffset = 65;
    end
    % End of props
    
    % Static methods
    % Start of static methods
    methods (Static)
        
        % Function for checking is letter upper-case
        % Start of function
        function isUpperCase = isUpperCase(letter)
            arguments
                letter (1,1) {mustBeA(letter,"char")}
            end
            isUpperCase = false;
            if ( letter >= 65 && letter <= 90)
                isUpperCase = true;
            end
        end
        % End of function
        
        % Function for checking is letter upper-case
        % Start of function
        function isLowerCase = isLowerCase(letter)
            arguments
                letter (1,1) {mustBeA(letter,"char")}
            end
            isLowerCase = false;
            if ( letter >= 97 && letter <= 122)
                isLowerCase = true;
            end
        end
        % End of function
        
        % Function for checking if text contains lower or upper case chars
        % Start of function
        function isWrongCaseInText = isWrongCaseInText(text,textCase)
            isWrongCaseInText = false;
            for i = 1 : length(text)
                
                if (textCase == "lower")
                    if (CaseHelper.isLowerCase(text(i)))
                        isWrongCaseInText = true;
                        break;
                    end
                end
                
                if (textCase == "upper")
                    if (CaseHelper.isUpperCase(text(i)))
                        isWrongCaseInText = true;
                        break;
                    end
                end
                
            end
        end
        % End of function
    end
    % End of static methods
    
end
% End of class

