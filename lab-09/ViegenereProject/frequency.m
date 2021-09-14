function [lowerCaseFrequency, upperCaseFrequency, ignoreCaseFrequency] = frequency(input)
lowerCodes = 97:1:122;
upperCodes = 65:1:90;

c = categorical(double(lower(input)), lowerCodes);
lowerCaseFrequency = histcounts(c);

for i = 1 : length(lowerCodes)
    fprintf('%s %d\n',lowerCodes(i),lowerCaseFrequency(i));
end


end