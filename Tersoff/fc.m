function Y = fc( i,j )

R = 1.95;
D = 0.15;

if rij(i,j) > (R+D)
    Y = 0;
elseif abs(rij(i,j)-R)<= D
    Y = 0.5*(1 - sin((pi*(rij(i,j) - R))/(2*D)));
elseif rij(i,j) < (R-D)
    Y = 1;
end

end

