function retval = simps(f, a, b)
  expr1 = (b-a)./6;
  expr2 = f(a) + 4*f((a+b)/2) + f(b);
  retval = expr1 .* expr2;
endfunction
