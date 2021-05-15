classdef MainHelper
    %MAINHELPER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Property1
    end
    
    methods
        function obj = MainHelper(inputArg1,inputArg2)
            %MAINHELPER Construct an instance of this class
            %   Detailed explanation goes here
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
    
    methods(Static)
        function callIsUpper(letter)
            isUpperCase(letter)
        end
    end
end

