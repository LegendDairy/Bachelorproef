function Y = gijk( i,j,k )

 c = 3.8049*10^4;
 d = 4.3484;
 h = -0.930;

Y = 1 + (c/d)^2 - (c^2)/(d^2 + (h-cos_ijk(i,j,k))^2);

end

