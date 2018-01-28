function Y = dl_cos_ijk( i,j,k, l)

if l == i
    Y = (2*x(i)-x(j)-x(k))./((rij(i,j)*rij(i,k))) - (cos_ijk(i,j,k)/rij(i,j))*dl_rij(i,j,l) - (cos_ijk(i,j,k)/rij(i,k))*dl_rij(i,k,l);
elseif l == j
    Y = (x(k)-x(i))./((rij(i,j)*rij(i,k))) - (cos_ijk(i,j,k)/rij(i,j))*dl_rij(i,j,l);
elseif l == k
    Y = (x(j)-x(i))./((rij(i,j)*rij(i,k))) - (cos_ijk(i,j,k)/rij(i,k))*dl_rij(i,k,l);
else
    Y = 0;
end

end

