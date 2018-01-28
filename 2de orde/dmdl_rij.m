function Y = dmdl_rij( i,j,l,m )

if l == i
    if m == i
        Y = eye(3)./(rij(i,j)) - dl_rij(i,j,m).'*((x(i)-x(j))./(rij(i,j))^2);
    elseif m == j
        Y = - eye(3)./(rij(i,j)) - dl_rij(i,j,m).'*((x(i)-x(j))./(rij(i,j))^2);
    else
        Y = 0;
    end
elseif l == j
    if m == j
        Y = eye(3)./(rij(i,j)) - dl_rij(i,j,m).'*((x(j)-x(i))./(rij(i,j))^2);
    elseif m == i
        Y = - eye(3)./(rij(i,j)) - dl_rij(i,j,m).'*((x(j)-x(i))./(rij(i,j))^2);
    else
        Y = 0;
    end
else
    Y = 0;
end
   
end

