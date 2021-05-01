%Titulo : Sumas de reimannn4, Sumas superiores e inferiores
% Descripción: Script para representar la funcion 
	% Autor:Jessica Martinez Jimenez
	% Fecha: 30/04/2021
  % f (x) = x ^ 2 - 2x + 3 en [?2, 3] con 8, 16, 32 y 48 rectángulos respectivamente
clc
   pkg load symbolic
  clear
 syms x;
 f =  4*x+5;
  a = input ('Inicio de intervalo');
  b = input('Fin de intervalo ');
  n = 3-0;
  dx = (b-a)/n;
  resultado = zeros(1,n);
  k =1;
  fs=subs(f,x,(a+k*dx));
  fr = fs * dx ;
  resultado = fr;
  for k=1:n
    fs=subs(f,x,(a+1+dx));
    fr=fs*dx;
    resultado(i+1)=resultado(i)+fr
   endfor 
   fprintf('total es:',double(resultado));
   x=a:0:b;
  