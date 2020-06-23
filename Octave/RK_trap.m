function [t, w] = RK_trap(f, t0, y0, h, n)
  
  w = [y0];
  t = [t0];
  
  for i=1:n
    k1 = f(t(end), w(end));
    k2 = f(t(end) + h, w(end)+k1*h) ;
    w = [w w(end) + h/2*(k1+k2)];
    t = [t t(end) + h];
  endfor
  
  tres = double(t(end));
  wres = double(w(end));
  fprintf("The resul at t = %f is w = %f\n", tres, wres);
  
endfunction
