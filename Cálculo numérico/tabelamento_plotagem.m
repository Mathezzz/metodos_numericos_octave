%programa para análise de raízes de funções
clear
clc

%Definindo os parâmetros iniciais
a=0;
b=5;
h=0.35;

%definindo a função f
f = @(x) x.^5-2*x.^4-9*x.^3+22*x.^2+4*x.-24;

%definindo o vetor de valores de x ? vx
vx = a:h:b;

%atribuindo os valores de vx à f e acumulando na variável y
y = f(vx);

%imprimindo o tabelamento
tam = length (vx); %tamanho do vetor vx
printf ("\t x \t | \t f(x) \n"); %cabeçalho
printf ("---------------------------------- \n"); %cabeçalho
for i=1:1:tam
printf ("\t %.2f \t | \t %.2f \n", vx(i), y(i));
endfor

%cria o gráfico da função
plot(vx,y,"b--");
grid;

%busca intervalos que possuem raízes no tabelamento
for i=1:1:tam-1
if((y(i)*y(i+1))<0)
printf("\n Intervalo entre %.2f e %.2f possui pelo menos uma raiz \n", vx(i), vx(i+1));
endif
endfor