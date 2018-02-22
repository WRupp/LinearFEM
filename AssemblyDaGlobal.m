function Kglobal = AssemblyDaGlobal(Nconec,SNcoord,Kglobal,Cd)

NElementos = size(Nconec,1);
NnosElemento = size(Nconec,2)-1;
% n=zeros(1,NnosElemento);
X = zeros(NnosElemento,1); 
Y = zeros(NnosElemento,1); 

    for k = 1: NElementos;
        % Acha os n�s do elemento
        for i = 1: NnosElemento
%         n(i) = Nconec(k,i+1);
        X(i) = SNcoord(Nconec(k,i+1),2);
        Y(i) = SNcoord(Nconec(k,i+1),3);
        end
        

        % Gera��o da matriz elementar
        Kelem = Ketp(X,Y,Cd);  % AQUI PRECISA DEPENDER DO TIPO DE ELEMENTO

        % Assembly no elemento na Global    

        Kglobal = SomaNaGlobal(Kglobal,NnosElemento,Nconec,Kelem,k); 

    end
end