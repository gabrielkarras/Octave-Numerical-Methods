function result = newtoncote(f,a,b,m)
  
  x = linspace(a,b,m+1);
  
  for i = 1:1:m
    mid = ( x(i+1) + x(i) )/2;
    retval(i) = (x(i+1) - x(i))*f(mid);
  endfor
  
  result = sum(retval);
  
endfunction
