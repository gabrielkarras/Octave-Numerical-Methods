function retval = bisection(f, a0, b0)
  a=a0;
  b=b0;
  ITER = 500;
  TOL = 10^(-8);
  
  N=1;
  while(N<500)
  
    x = (a+b)/2;
    
    % test for tolerance
    if( (abs((b-a)/2)) < TOL )
      retval = x
      break;
    elseif(f(x) == 0)
      retval = x
      fprintf("Solution is %f \n", double(retval));
      break;  
    endif
    
    % update values
    if( ( f(a)*f(x) ) < 0)
      b = x;
    else
      a = x;
    endif
     
     %print content
    fprintf("Iteration i: %d result is a: %f and b: %f \n", 
            N, double(a), double(b));
    N++;
    
  endwhile
 
endfunction
