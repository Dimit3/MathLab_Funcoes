

function valor = mytrapezios (f,a,b,n)
h=(b-a)/n;
valor=f(a)+f(b);
for x=a+h:h:b-h;
    valor=valor + 2*f(x);
end
valor=(h/2)*valor;
endfunction
