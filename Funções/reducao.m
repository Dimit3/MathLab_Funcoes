function c = reducao (A,b)

n = length(A);

for j=1:n-1
for i=j+1:n
m = -A(i,j)/A(j,j);
A(i,:)=A(i,:)+m*A(j,:);
b(i)= b(i) + m*b(j);
end
end


c = [A b];




endfunction
