function Y = dmdl_fc( i,j,l,m )
%DL_FC Summary of this function goes here
%   Detailed explanation goes here

R = 1.95;
D = 0.15;
if abs(rij(i,j)-R)<= D
    Y = (pi^2/(8*D^2))*( sin((pi*(rij(i,j) - R))/(2*D)))*dl_rij(i,j,m).'*dl_rij(i,j,l)-(pi/(4*D))*( cos((pi*(rij(i,j) - R))/(2*D)))*dmdl_rij(i,j,l,m);
else
    Y = 0;
end
end




