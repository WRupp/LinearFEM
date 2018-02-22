function [Ke] = intTriQuadratico (Cd,X,Y)
% Ver o funcionamento e tabelas de integração na seção 9.8 da apostila de finitos
% ou na pagina 267 do Cook (concepts and applications ...)

% Para um elemento triangular quadrático é necessário apenas um ponto de integração.
% na posição 

 e1 = 1/3;
 e2 = 1/3;

 % E o peso

 Wj = 1

 % a integração é feita apenas em um ponto de integração (pode ser alterado)

 np  = 1;

 % A integração é feita

 	for j = 1 : np
 	B = Btriquad(e1,e2,X,Y);
 	P = B' * Cd * B;
 	detJ = det( Jacobiana(e1,e2,X,Y) );
 	Ke = Ke + P * detJ * Wj;
 	end

 	Ke = 1/2 * Ke;

 end