function x=GaussElimPP (A,b)
% resolve o sistema Ax=b pelo metodo de eliminaçao de Gauss sem pivotaçao
% usa a function STriangular que implementa o metodo de substituicao
% inversa para matrizes triangulares superiores;
n=length(b);
for k=1:n-1 
   % Aqui faz se a troca de linhas ( pivotação parcial )
   [~,p]=max(abs(A(k:n,k)));
   p = p + k - 1;
   if k~=p
    A([k p],:) = A([p k],:); 
    b([k p],1) = b([p k],1);
    end
    for i=k+1:n
        m=A(i,k)/A(k,k);        
        A(i,k:n)=A(i,k:n)-m*A(k,k:n); 
        b(i)=b(i)-m*b(k);
    end
end
x=STriangular(A,b);

