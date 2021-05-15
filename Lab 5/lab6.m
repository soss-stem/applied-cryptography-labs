%vrijednosti iz zadatka
a=2;
b=2;
XG= 5;
YG=1;

%formule koeficijenta smjera i za tocku G2
k= mod((3*XG*XG+a)*powermod((2*YG),-1,17),17);
X2G=mod(k*k-2*XG,17);
Y2G=mod(k*(XG-X2G)-YG,17);

G= zeros(2,17); % popunjuje vrijednosti nulama od G3...
G(1,1)=XG; %Upisujemo X vrijednost prve tocke G
G(2,1)=YG; %Upisujemo Y vrijednost prve tocke G
G(1,2)=X2G;
G(2,2)=Y2G;
xp=XG;
yp=YG;
xs=X2G;
ys=Y2G;
i=2; %brojac za usmjeriti unos Gi vrijednosti 

while(xs-xp~=0)
    G(1,i)=xs;
    G(2,i)=ys;
    s=mod((ys-yp),17)*powermod(xs-xp,-1,17);
    x=mod(s*s-xs-xp,17); 
    y=mod(s*(xs-x)-ys,17);
    i=i+1;
    xs=x;
    ys=y;
end