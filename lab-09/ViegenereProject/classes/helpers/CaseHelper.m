classdef CaseHelper
%CASEHELPER Class serves as a holder for often used values in project functions
%
%CaseHelper Properties (Constant, Public):
%   lowerAlphabetCodes - vector array of lowercase alphabet ASCII codes
%   lowerAlphaBet - vector array of lowercase alphabet chars
%   lowerCaseOffset - scalar representing ASCII code offset from zero
%   e.g. : lowercase 'a' is offset by 97 from alphabet position zero
%
%   upperAlphabetCodes - vector array of uppercase alphabet ASCII code
%   upperAlphabet - vector array of uppercase alphabet chars
%   upperCaseOffset - scalar representing ASCII code offset from zero
%   e.g. : uppercase 'a' is offset by 65 from alphabet position zero
%
%   Author          : Stjepan Mamusa
%   Email           : smamusa@hotmail.com
%   Date-Created    : May 2021
%   Date-Modified   : May 2021

%   Constant properties with public getter

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

end
% End of class

