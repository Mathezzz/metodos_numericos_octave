%Limpando as vari�veis e a tela
clear
clc
printf("M�todo da Ponto fixo \n")
%Dados iniciais do problema
a=1.75;
b=2.10;

%Precis�o
prec=10^-6;

%Contador de Itera��es
k=0;
%Limite de Itera��es
li=100;

%Definindo a fun��o
function [y] = f(x) 
  y = x.^5-2*x.^4-9*x.^3+22*x.^2+4*x.-24;
endfunction
%Definindo a fun��o de itera��o
function [y] = fi(x)
  y = (-x.^5+2*x.^4+9*x.^3-22*x.^2+24)/4;
endfunction
%------------------------
%Primeiro c�lculo da raiz
%------------------------
x_=(a+b)/2;
while (abs(f(x_))>prec)&&(k<li)
  %Atualizando o valor da raiz
  x_=fi(x_);
  
  %Somando mais uma itera��o
  k+=1;
  printf(" x= %.7f  |  f(x)= %.7f \n",x_ , f(x_));
endwhile
printf("\n \n");
printf("Fim do processamento \\o/ \n");
printf("k= %.7f, Raiz = %.7f, f(x)=%.7f \n",k, x_ , f(x_));