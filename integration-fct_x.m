a = 0
b = 2
%nombre d'intervales
n = 193
h = (b-a)/n
x=a:h:b
%Evaluation de la fonction
f=x.^2
%Calcul de l'intégrale
I1 = h*(sum(f)-0.5*f(1)-0.5*f(end))

plot(x,f)

%Calcul de l'intégrale avec n=2n
n = 2*n
h = (b-a)/n
x = a:h:b
f=x.^2
I2 = h*(sum(f)-0.5*f(1)-0.5*f(end))

%Calcul des erreurs
EA=abs(I2-I1) %Erreur absolue
ER=abs(EA/I2) %Erreur  relative

