function [t,w] = RK4(f, t0, y0, h, n)
  
  w = [y0];
  t = [t0];
  
  for i = 1:n
    k1 = f(t(end), w(end));
    k2 = f(t(end) + h/2, w(end) + k1*h/2);
    k3 = f(t(end) + h/2, w(end) + k2*h/2);
    k4 = f(t(end) + h, w(end) + k3*h);
    
    w = [w w(end) + h/6*(k1 + 2*k2 + 2*k3 + k4)];
    t = [t t(end) + h];
  endfor
  
  % print result
  tres = double(t(end));
  wres = double(w(end));
  fprintf("The resul at t = %f is w = %f\n", tres, wres);
  
endfunction