function iter = bisectionIteration(a0, b0, tol)
  
  upper = log10(b0 - a0) - log10(tol);
  lower = log10(2);
  iter = (upper/lower) - 1;
  
endfunction
