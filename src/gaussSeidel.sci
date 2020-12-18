function [x,e]=gauss_seidel(A,b,n,epsilon)
    y=0
    z=0
    x=zeros(n,1)
    
    e=1
    while (e>epsilon)
        for i=1:n
            y=0
            for  j=1:i-1
               y=y+A(i,j)*x(j)
            end
            z=0
            for j=i+1:n
                z=z+A(i,j)*x(j)
            end 
            x(i)=(1/A(i,i))*(b(i)-z-y)
        end
        e=norm(b-A*x)
        
    end
        
    
    
endfunction
