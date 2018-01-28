function Y = dl_rij( i,j,l )

if l == i
    Y = (x(i)-x(j))./(rij(i,j));
elseif l == j
    Y = (x(j)-x(i))./(rij(i,j));
else
    Y = 0;

end

