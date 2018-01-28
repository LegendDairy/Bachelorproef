function Y  = cos_ijk(i,j,k)

Y = dot((x(j)-x(i)),(x(k)-x(i)))/(rij(i,j)*rij(i,k));

end

