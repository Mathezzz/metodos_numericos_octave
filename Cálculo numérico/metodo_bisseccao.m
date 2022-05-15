%Limpando as variáveis e a tela
clear
clc
printf("Método da Bisseccao \n");
%Dados iniciais do problema
a=1.75;
b=2.10;

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
x_=(a+b)/2;

%Aplicação do método:
while (abs(f(x_))>prec)&&(k<li)
  x_=(a+b)/2;
  
  %Adicionando mais 1 ao contador de iterações
  k+=1;
  
  %Definindo em qual intervalo está a raiz
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
