function valor = mysimpson (f,a,b,n)

valor = 0;
h=(b-a)/n;
for x=a+2*h:2*h:b-2*h;
    valor=valor + 2*f(x);

end 

for x=a+h:2*h:b-h;
    valor=valor + 4*f(x);
end

valor = valor + f(a)+f(b);
valor =(h/3)*valor;  
  
  
endfunction
