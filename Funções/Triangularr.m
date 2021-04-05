function x = Triangularr (A, b, n)
 
x(n,1)=b(n)/A(n,n); pause

for i=n-1:-1:1;
   x(i)=(b(i)- A(i,i+1:n)*x(i+1:n))/A(i,i); pause
  
end


endfunction
