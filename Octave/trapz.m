function retval = trapz(f, a0, b0)
  retval = (b0-a0)*( f(a0) + f(b0))./2;
endfunction
