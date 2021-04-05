function [L,U] = myLUU (A)

n=length(A);
L=eye(n);

for k=1:n-1
    for i=k+1:n
        m=A(i,k)/A(k,k);
        A(i,k:n)=A(i,k:n)-m*A(k,k:n);    
        L(i,k)=m;   
    end
    
end
U = triu(A);
endfunction
