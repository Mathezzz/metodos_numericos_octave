%Limpando as variáveis e a tela
clear
clc
printf("Método da Secante \n")
%Dados iniciais do problema
xk0=1.75;
xk1=2.10;
%Precisão
prec=10^-6;

%Contador de Iterações
k=0;
%Limite de Iterações
li=100;

%Definição da função
function [y] = f(x) 
  y = x.^5-2*x.^4-9*x.^3+22*x.^2+4*x.-24;
endfunction

%------------------------
%Primeiro cálculo da raiz
%------------------------

xk2 = (xk1 - ((f(xk1)*(xk1-xk0))/(f(xk1)-f(xk0))));
while (abs(f(xk2))>prec)&&(k<li)
  %Atualizando os valores dos intervalos
  xk0=xk1;
  xk1=xk2;
  %Recalculando a raiz
  xk2 = (xk1 - ((f(xk1)*(xk1-xk0))/(f(xk1)-f(xk0))));
  
  %Somando uma iteração
  k+=1;
  printf(" x= %.7f   |   f(x)= %.7f \n",xk2 , f(xk2));
endwhile
printf("\n \n");
printf("Fim do processamento \\o/ \n");
printf("N de Iterações = %.7f \nRaiz = %.7f \nf(x)=%.7f \n",k ,xk2 ,f(xk2));