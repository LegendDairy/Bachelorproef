function Y = dl_gijk( i,j,k,l )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 c = 3.8049*10^4;
 d = 4.3484;
 h = -0.930;

Y = ((-2*(c^2)*(h-cos_ijk(i,j,k)))/(d^2+(h-cos_ijk(i,j,k))^2)^2)*dl_cos_ijk(i,j,k,l);

end