% Condicoes de contorno para o problema de vaso de pressao

 Pressao = 100 ; % MPa
 r0 = 50 ; % mm
 
% Condicao de forca
SetEsq = NodePosFinder(Ncoord,r0);
f = Pressao / size(SetEsq,1);  % Tem Erro Aqui. Nao seria consistente.
Mfn = set2Mcc( SetEsq,f,1,[]); 

% Condicao de deslocamento
SetBaixo = NodePosYFinder(Ncoord,0);
SetCima = NodePosYFinder(Ncoord,5);
Mcc = set2Mcc( SetBaixo,0,2,[]);
Mcc = set2Mcc( SetBaixo,0,2,Mcc);