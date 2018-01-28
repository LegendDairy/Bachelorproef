function Y = dl_fc( i,j,l )

R = 1.95;
D = 0.15;


%DL_FC Summary of this function goes here
%   Detailed explanation goes here
if abs(rij(i,j)-R)<= D
    Y = -(pi/(4*D))*( cos((pi*(rij(i,j) - R))/(2*D)))*dl_rij(i,j,l);
else
    Y = 0;
end
    
end

