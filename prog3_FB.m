function [c, n, iter]= prog3_FB(f,I,tol)
  
  a=I(1);
  b=I(2);
  iteraciones = ceil((log(b-a)-log(2*tol))/log(2));
  iter=zeros(iteraciones,1);
  
  n = 1;
  while(n<=iteraciones)

    c=(a+b)/2;
    if(f(a)*f(c)>0)
        a=c;
    else
        b=c;
    endif
    
    iter(n)=c;
    
    n++;
  
  endwhile
  n--;

endfunction