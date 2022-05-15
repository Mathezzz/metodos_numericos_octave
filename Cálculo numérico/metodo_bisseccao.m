%Limpando as vari�veis e a tela
clear
clc
printf("M�todo da Bisseccao \n");
%Dados iniciais do problema
a=1.75;
b=2.10;

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
x_=(a+b)/2;

%Aplica��o do m�todo:
while (abs(f(x_))>prec)&&(k<li)
  x_=(a+b)/2;
  
  %Adicionando mais 1 ao contador de itera��es
  k+=1;
  
  %Definindo em qual intervalo est� a raiz
  if f(a)*f(x_)>0
    
    %Atualizando o intervalo
    a = x_;
  else
    
    %Atualizando o intervalo
    b = x_;
  endif
  printf(" x= %.7f  |  f(x)= %.7f \n",x_ , f(x_));
endwhile

printf("\n \n");
printf("Fim do processamento \\o/ \n");
printf("k = %.7f Raiz = %.7f, f(x)=%.7f \n",k ,x_ , f(x_));
