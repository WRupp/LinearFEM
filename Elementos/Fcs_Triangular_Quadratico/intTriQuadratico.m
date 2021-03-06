function [Ke] = intTriQuadratico (X,Y,Cd)
% Ver o funcionamento e tabelas de integração na seção 9.8 da apostila de finitos
% ou na pagina 267 do Cook (concepts and applications ...)

    % Numero de pontos de integracao
 np  = 3;
    % Posicao dos pontos
 e = [2/3 1/6;
      1/6 1/6;
      1/6 2/3];
    % Peso
 W = 1/3;

 % A integracao 
    Ke = zeros(12) ; % hardcoded para o T6

 	for j = 1 : np
    e1 = e(j,1);
    e2 = e(j,2);
    
    J = J_TriQuad(e1,e2,X,Y);
 	B = Btriquad(e1,e2,J);
    
 	Polinomio = transpose(B) * Cd * B;
    
    % Aqui o termo de 1/2 deve ser alterado se outro elemento for utilizado
    Area =   (1/2* det(J))  ;                        
 	Ke = Ke + Polinomio *(Area) * W; 
 	end

 end