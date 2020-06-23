function retval = newton(f, df, x_init)
  TOL = 10^(-8);
  ITER_MAX = 40;
  EPSILON = 10^(-10);
  x0 = x_init;
  
  for i = 0:ITER_MAX
    y = f(x0);
    yprime = df(x0);
    
    if( abs(yprime) < EPSILON )
      break;
    endif
    
    x1 = x0 - (y/yprime);
    
    if( abs(x1 - x0) < TOL )
      retval = x1;
      break;
    endif
    
    x0 = x1;
    
    % display iteration content
    display(i);
    display(x0);
    
  endfor
  
endfunction