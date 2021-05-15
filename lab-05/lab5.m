generator = [5 1];
gX = generator(1,1);
gY = generator(1,2);
pK = randi(10e5); % faktor k - privatni kljuc
jK = pK * generator; % javni kljuc