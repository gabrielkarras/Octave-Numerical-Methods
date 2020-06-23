function [x] = falseposition(f, a0, b0)
  
  TOL = 10^(-8);
  a = a0;
  b = b0;
  x = [(a.*f(b) - b.*f(a))./(f(b) - f(a))];
  iter = 0;
  while abs((b-a)/2) >= TOL
    x = [x (a.*f(b) - b.*f(a))./(f(b) - f(a))];
    
    if f(a)*f(x(end)) < 0
      b = x(end);
    else
      a = x(end);
    endif
    
    % Displays values of a & b for each iteration
    iter += 1;
    display(iter);
    display(a);
    display(b);
    
  endwhile
endfunction
