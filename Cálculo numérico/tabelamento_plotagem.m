%programa para an�lise de ra�zes de fun��es
clear
clc

%Definindo os par�metros iniciais
a=0;
b=5;
h=0.35;

%definindo a fun��o f
f = @(x) x.^5-2*x.^4-9*x.^3+22*x.^2+4*x.-24;

%definindo o vetor de valores de x ? vx
vx = a:h:b;

%atribuindo os valores de vx � f e acumulando na vari�vel y
y = f(vx);

%imprimindo o tabelamento
tam = length (vx); %tamanho do vetor vx
printf ("\t x \t | \t f(x) \n"); %cabe�alho
printf ("---------------------------------- \n"); %cabe�alho
for i=1:1:tam
printf ("\t %.2f \t | \t %.2f \n", vx(i), y(i));
endfor

%cria o gr�fico da fun��o
plot(vx,y,"b--");
grid;

%busca intervalos que possuem ra�zes no tabelamento
for i=1:1:tam-1
if((y(i)*y(i+1))<0)
printf("\n Intervalo entre %.2f e %.2f possui pelo menos uma raiz \n", vx(i), vx(i+1));
endif
endfor