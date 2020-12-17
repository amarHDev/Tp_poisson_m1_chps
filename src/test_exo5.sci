s = 100;
rand("seed");
xdata = [10:10:100];
for n= xdata
    
    i=n/10;

A=rand(n,n);

       
xex=rand(n,1);


[L,U]= factorisation(A);

disp(L);
disp(U);
disp(A);
disp(L*U);

bError(i) = norm(A-L*U)/norm(A);


end




plot(xdata,log(bError),"b");
