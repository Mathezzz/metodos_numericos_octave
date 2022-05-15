%Limpando as vari�veis e a tela
clear
clc
printf("M�todo da Falsa Posi��o \n")
%Dados iniciais do problema
a=1.75;
b=2.10;

prec=10^-6;

%Contador de Itera��es
k=0;
%Limite de Itera��es
li=100;

function [y] = f(x) 
  y = x.^5-2*x.^4-9*x.^3+22*x.^2+4*x.-24;
endfunction
%------------------------
%Primeiro c�lculo da raiz
%------------------------
x_=(a*f(b)-b*f(a))/(f(b)-f(a));

%Aplicando o m�todo
while (abs(f(x_))>prec)&&(k<li)
  %Atualizando o valor da raiz
  x_=(a*f(b)-b*f(a))/(f(b)-f(a));
  k+=1;
  %Definindo em qual intervalo est� a raiz
  if f(a)*f(x_)>0
    %Atualizando o valor do intervalo
    a = x_;
    
  else
    %Atualizando o valor do intervalo
    b = x_;
    
  endif
  printf("k=%.7f x= %.7f  |  f(x)= %.7f \n",k ,x_ , f(x_));
endwhile

printf("\n \n");
printf("Fim do processamento \\o/ \n");
printf("k= %.7f, Raiz = %.7f, f(x)=%.7f \n",k ,x_ , f(x_));