function B = Btriquad(e1,e2,J)

     % As derivadas das fcs de forma
% 	N(1,1) = 4*e1+4*e2-1;
% 	N(2,1) = 4*e1 -1 ;
% 	N(3,1) = 0 ;
% 	N(4,1) = 4*(1-2*e1-2*e2);
% 	N(5,1) = 4*e2;
% 	N(6,1) = -4*e2;
% 
% 	N(1,2) = 4*e1+4*e2-3;
% 	N(2,2) = 0;
% 	N(3,2) = 4*e2-1;
% 	N(4,2) = -4*e1;
% 	N(5,2) = 4*e1;
% 	N(6,2) = 4*(1-e1-2*e2);
    
    
    Psi = MatrizGradienteTriQuad(e1,e2);
    
    N =( J \ Psi)' ;  % Inversa de J
    
    

    B = [ N(1,1) 0      N(2,1) 0      N(3,1) 0      N(4,1) 0      N(5,1) 0      N(6,1) 0;
          0      N(1,2) 0      N(2,2) 0      N(3,2) 0 	   N(4,2) 0      N(5,2) 0      N(6,2);
          N(1,2) N(1,1) N(2,2) N(2,1) N(3,2) N(3,1) N(4,2) N(4,1) N(5,2) N(5,1) N(6,2) N(6,1) ];
    
    % Tem que multiplicar pelo Jacobiano
        
           
end