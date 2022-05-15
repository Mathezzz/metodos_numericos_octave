%Limpando as vari�veis e a tela
clear
clc
printf("M�todo da Secante \n")
%Dados iniciais do problema
xk0=1.75;
xk1=2.10;
%Precis�o
prec=10^-6;

%Contador de Itera��es
k=0;
%Limite de Itera��es
li=100;

%Defini��o da fun��o
function [y] = f(x) 
  y = x.^5-2*x.^4-9*x.^3+22*x.^2+4*x.-24;
endfunction

%------------------------
%Primeiro c�lculo da raiz
%------------------------

xk2 = (xk1 - ((f(xk1)*(xk1-xk0))/(f(xk1)-f(xk0))));
while (abs(f(xk2))>prec)&&(k<li)
  %Atualizando os valores dos intervalos
  xk0=xk1;
  xk1=xk2;
  %Recalculando a raiz
  xk2 = (xk1 - ((f(xk1)*(xk1-xk0))/(f(xk1)-f(xk0))));
  
  %Somando uma itera��o
  k+=1;
  printf(" x= %.7f   |   f(x)= %.7f \n",xk2 , f(xk2));
endwhile
printf("\n \n");
printf("Fim do processamento \\o/ \n");
printf("N de Itera��es = %.7f \nRaiz = %.7f \nf(x)=%.7f \n",k ,xk2 ,f(xk2));