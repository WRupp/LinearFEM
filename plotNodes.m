function []=plotNodes(SNcoord,Ufinal)   
% Abre uma nova janela e plota os n�s em sua configura��o original (azul) e
% deformada(vermelho). 2D

figure;
    hold on; axis equal;    
    for i=1:size(SNcoord,1)
    plot(SNcoord(i,2),SNcoord(i,3),'bo'); 
    plot(SNcoord(i,2)+Ufinal(2*i-1),SNcoord(i,3)+Ufinal(2*i),'ro');        
    end   
end
    