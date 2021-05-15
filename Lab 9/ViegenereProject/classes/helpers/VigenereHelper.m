classdef VigenereHelper
    % Author - Stjepan Mamusa (smamusa@hotmail.com)
    % VigenereHelper Class containing helper functions Vigenere
    % cryptography
    % This is a simple holder class
    
    % Static methods
    % Start of static methods
    methods (Static)
        
        % Simple Vigenere encryption - lower-case only
        % Start of function
        function cypherTextLower = encryptLowerCaseText(lowerCasePlainText, key, options)
            arguments
                lowerCasePlainText (1,:) char {mustBeText(lowerCasePlainText)}
                key (1,:) char {VigenereHelper.validateKeyLength(lowerCasePlainText, key), mustBeText(key)}
                options.Info (1,1) logical = 0
            end
            % Pre-allocate empty vector
            cypherTextLowerCodes = zeros(1, length(lowerCasePlainText));
            
            
            for i = 1 : length(lowerCasePlainText)
                cypherTextLowerCodes(i) = double(lowerCasePlainText(i)) + ( double( key( mod(i-1 , length(key)) + 1 )) - CaseHelper.lowerCaseOffset);
                if (cypherTextLowerCodes(i) > 122)
                    cypherTextLowerCodes(i) = cypherTextLowerCodes(i) - 26;
                end
            end
            
            cypherTextLower = char(cypherTextLowerCodes);
            if (options.Info)
                fprintf("Plain text : %s\n", lowerCasePlainText);
                fprintf("Key text : %s\n", key);
                fprintf("Cypher text : %s\n", char(cypherTextLowerCodes));
            end
        end
        % End of function
        
        % Simple Vigenere encryption - upper-case only
        % Start of function
        function cypherTextUpper = encryptUpperCaseText(upperCasePlainText, key, options)
            arguments
                upperCasePlainText (1,:) char {mustBeText(upperCasePlainText)}
                key (1,:) char {VigenereHelper.validateKeyLength(upperCasePlainText, key), mustBeText(key)}
                options.Info (1,1) logical = 0
            end
            
            % Pre-allocate empty vector
            cypherTextUpperCodes = zeros(1, length(upperCasePlainText));
            
            for i = 1 : length(upperCasePlainText)
                cypherTextUpperCodes(i) = double(upperCasePlainText(i)) + ( double( key( mod(i-1 , length(key)) + 1 )) - CaseHelper.upperCaseOffset);
                if (cypherTextUpperCodes(i) > 90)
                    cypherTextUpperCodes(i) = cypherTextUpperCodes(i) - 26;
                end
            end
            
            
            cypherTextUpper = char(cypherTextUpperCodes);
            if (options.Info)
                fprintf("Plain text : %s\n", upperCasePlainText);
                fprintf("Key text : %s\n", key);
                fprintf("Cypher text : %s\n", char(cypherTextUpperCodes));
            end
        end
        % End of function
        
        
            
    % Custom validator functions
    % Key-length validator
    % Start of function
    function validateKeyLength(text, key)
        if (length(key) > length(text))
            error('Encryption key has to be of lenght less or equal to the length of plain text.');
        end
    end
    % End of function
    end
    
    % End of static methods

end
% End of class