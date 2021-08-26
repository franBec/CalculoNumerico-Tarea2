function [c, err, iter] = prog1_FB(f,I,n)
  iter=zeros(n,1);
  
  a=I(1);
  b=I(2);
  err = (b-a)/(2^(n+1));
  
  for(i=1 : n)
    c=(a+b)/2;
    if(f(a)*f(c)<0)
        b=c;
    else
        a=c;
    endif
    iter(i)=c;
  endfor

endfunction