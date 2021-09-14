codes = zeros(1,52);

for i = 97 : 122
    codes(i-96) = i;
end

for i = 65 : 90
    codes(nnz(codes) + 1) = i;
end