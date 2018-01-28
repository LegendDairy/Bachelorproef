function Y = bij( i,j )
 n = 0.72751;
 beta = 1.5724*10^(-7);
 Y = (1 + (beta*cij(i,j))^n)^(-1/(2*n));
end

