function  Y = dl_bij( i,j,l )
%DI_BIJ Summary of this function goes here
%   Detailed explanation goes here
 n = 0.72751;
 beta = 1.5724*(10^(-7));
 Y = (-1/2) * (1 + (beta^n)*(cij(i,j))^n)^((-1/(2*n))-1) * ((beta^n)*(cij(i,j))^(n-1)*dl_cij(i,j,l));
end



