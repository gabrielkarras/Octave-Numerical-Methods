function result = simpson(f,a,b,m)
  
  h = (b-a)/(2*m);
  x1 = linspace(a+h, b-h, m);
  x2 = linspace(a+2*h, b-2*h, m-1);
  result = h/3*( f(a) + f(b) + 4*sum(f(x1)) + 2*sum(f(x2)) );
  
endfunction
