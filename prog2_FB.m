function [c, err, iter]= prog2_FB(f,I,tol)
  
  a=I(1);
  b=I(2);
  n = (log(b-a)-log(2*tol))/log(2);
  err = (b-a)/(2^(ceil(n)));
  iter=zeros(ceil(n),1);
  while(n>tol)

    c=(a+b)/2;
    if(f(a)*f(c)>0)
        a=c;
    else
        b=c;
    endif
    iter(ceil(n))=c;
    
    n = (log(b-a)-log(2*tol))/log(2);
  
  endwhile
  
endfunction