function retval = fixedpoint(gx, x0)
  
  x0 = x0;
  TOL = 10^(-8);
  ITER_MAX = 100;
  
  for i = 1:ITER_MAX
    x1 = gx(x0);
    
    if abs(x1-x0) < TOL
      fprintf('solution is %f \n', double(x1));
      retval = x1;
      break;
    endif
    
    fprintf('iteration : %d and its result: %f \n', i, double(x0));
    x0 = x1; % update value
    
  endfor
  
  if abs(x1-x0) > TOL
    fprintf("Solution wasn't found");
    retval = 0.0;
  endif

endfunction
