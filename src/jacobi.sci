function [x,test,r]=jacobi(A,n,b,eps)
    
    
    
    M=-(triu(A,1)+tril(A,-1))
    temp=diag(A)
    N=zeros(n,n)
    for i=1:n
        N(i,i)=temp(i)
    end
    
    
    
    x=zeros(n,1);
    B=inv(N)*M
    v=inv(N)*b
    temp=zeros(n,1)
    ev=zeros(n,1)
    r=1
    test=0
    //on considere que l'intervalle est uniforme ,ainsi on le calcul une seul fois
    while(r>eps)
        ev=zeros(n,1)
       temp=zeros(n,1)
       for i=1:n
           for j=1:n
           temp(i)=temp(i)+B(i,j)*x(j)
       end
       temp(i)=temp(i)+v(i)
       
       end                
       
        
          
        r=norm(b-A*x)
        // e=norm(ev)
             x=temp
          test=test+1
          
         
    end
endfunction