function result = trapezoid(f,a,b,m)
  
  x = linspace(a,b,m+1);
  h = (b-a)/m;
  
  result = h/2 * (2*sum(f(x)) - f(a) - f(b));
endfunction
