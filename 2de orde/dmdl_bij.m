function Y = dmdl_bij( i,j,l,m )

 n = 0.72751;
 beta = 1.5724*(10^(-7));

 Y = (-1/2)*(-1/(2*n) - 1) * beta^(2*n) * (n)*cij(i,j)^(2*n-2) * (1 + (beta^n)*(cij(i,j))^n)^((-1/(2*n))-2) * dl_cij(i,j,m).' * dl_cij(i,j,l) ...
     - ((n-1)/2)*beta^n*cij(i,j)^(n-2)* (1 + (beta^n)*(cij(i,j))^n)^((-1/(2*n))-1) * dl_cij(i,j,m).' * dl_cij(i,j,l) ...
     - (1/2) * beta^n * cij(i,j)^(n-1) * (1 + (beta^n)*(cij(i,j))^n)^((-1/(2*n))-1)* dmdl_cij(i,j,l,m) ;
 
end

