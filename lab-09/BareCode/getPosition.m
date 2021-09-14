function position = getPosition(letter)
    arguments
        letter (1,1) {argumentInfo(letter), mustBeText(letter)}
    end

asciiCode = double(letter);


end


function argumentInfo(argument)
    disp('getPosition function input : ');
    disp(argument);
end