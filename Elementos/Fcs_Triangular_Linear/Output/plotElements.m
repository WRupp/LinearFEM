function []=plotElements(SNcoord, Nconec,flagCor)
% Plota os elementos a partir de uma matriz de coordenadas nodais e a
% matriz de conectividade. 2D

SNcoord = sortrows(SNcoord); % organiza em numeracao crescente

hold on; 

    for k = 1:size(Nconec,1)
       X=[]; Y=[];
         % Pega a numera��o dos n�s do elemento e sua posi��o
        for j = 1:size(Nconec,2)-1 
        X(j) =  SNcoord( Nconec(k,1+j),2);
        Y(j) =  SNcoord( Nconec(k,1+j),3);     
        end
        X=[X X(1)];
        Y=[Y Y(1)];

        plot(X,Y,flagCor);    
    end
end