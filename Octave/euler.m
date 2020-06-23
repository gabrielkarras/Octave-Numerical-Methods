function [t, w] = euler(f, t0, y0, h, n)
  
  w = [y0];
  t = [t0];
  
  for i = 1:n
    w = [w w(end) + h*f(t(end),w(end))];
    t = [t t(end) + h];
  endfor
  
  %print content
  tres = double( t(end) );
  wres = double( w(end) );
  fprintf("Our result at t = %f is w = %f\n", tres, wres);
  
endfunction
