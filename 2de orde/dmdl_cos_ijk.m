function Y = dmdl_cos_ijk( i,j,k,l,m )

if l == i
    if m == l
    Y = (2*eye(3))./((rij(i,j)*rij(i,k))) - dl_rij(i,j,m).'*((2*x(i)-x(j)-x(k))./((rij(i,j)^2*rij(i,k))))...
        - dl_rij(i,k,m).'*((2*x(i)-x(j)-x(k))./((rij(i,j)*rij(i,k)^2)))...
        - (dl_cos_ijk(i,j,k,m)./rij(i,j)).'*dl_rij(i,j,l) + (cos_ijk(i,j,k)/rij(i,j)^2)*dl_rij(i,j,m).' * dl_rij(i,j,l) - (cos_ijk(i,j,k)/rij(i,j))*dmdl_rij(i,j,l,m)...
        - (dl_cos_ijk(i,j,k,m)./rij(i,k)).'*dl_rij(i,k,l) + (cos_ijk(i,j,k)/rij(i,k)^2)*dl_rij(i,k,m).' * dl_rij(i,k,l) - (cos_ijk(i,j,k)/rij(i,k))*dmdl_rij(i,k,l,m);
    elseif m == j
    Y = (-eye(3))./((rij(i,j)*rij(i,k))) - dl_rij(i,j,m).'*(2*x(i)-x(j)-x(k))./(((rij(i,j)^2)*rij(i,k)))...
        - (dl_cos_ijk(i,j,k,m).'/rij(i,j))*dl_rij(i,j,l) + (cos_ijk(i,j,k)/rij(i,j)^2)*dl_rij(i,j,m).'*dl_rij(i,j,l) - (cos_ijk(i,j,k)/rij(i,j))*dmdl_rij(i,j,l,m)...
        - (dl_cos_ijk(i,j,k,m).'/rij(i,k))*dl_rij(i,k,l);

    elseif m == k
    Y = (-eye(3))./((rij(i,j)*rij(i,k))) - dl_rij(i,k,m).'*(2*x(i)-x(j)-x(k))./(((rij(i,j))*rij(i,k)^2))...
        - (dl_cos_ijk(i,j,k,m).'/rij(i,k))*dl_rij(i,k,l) + (cos_ijk(i,j,k)/rij(i,k)^2)*dl_rij(i,k,m).'*dl_rij(i,k,l) - (cos_ijk(i,j,k)/rij(i,k))*dmdl_rij(i,k,l,m)...
        - (dl_cos_ijk(i,j,k,m).'/rij(i,j))*dl_rij(i,j,l);

    else
        Y = 0;
    end
elseif l == j
    if m == l
    Y = -dl_rij(i,j,m).'*(x(k)-x(i))./(((rij(i,j)^2)*rij(i,k))) - (dl_cos_ijk(i,j,k,m).'/rij(i,j))*dl_rij(i,j,l)...
        + (cos_ijk(i,j,k)/rij(i,j)^2)*dl_rij(i,j,m).'*dl_rij(i,j,l) - (cos_ijk(i,j,k)/rij(i,j))*dmdl_rij(i,j,l,m);
    elseif m==i
        Y = (-eye(3))./((rij(i,j)*rij(i,k)))-dl_rij(i,j,m).'*(x(k)-x(i))./((rij(i,j)^2*rij(i,k))) -dl_rij(i,k,m).'*(x(k)-x(i))./((rij(i,j)*rij(i,k)^2))...
        - (dl_cos_ijk(i,j,k,m).'/rij(i,j))*dl_rij(i,j,l) + (cos_ijk(i,j,k)/rij(i,j)^2)*dl_rij(i,j,m).'*dl_rij(i,j,l) - (cos_ijk(i,j,k)/rij(i,j))*dmdl_rij(i,j,l,m);
    elseif m==k
        Y = (eye(3))./((rij(i,j)*rij(i,k))) - dl_rij(i,k,m).'*(x(k)-x(i))./((rij(i,j)*rij(i,k)^2)) ...
            - (dl_cos_ijk(i,j,k,m).'/rij(i,j))*dl_rij(i,j,l);
    else
        Y = 0;
    end
elseif l == k
    if m == l
            Y = -dl_rij(i,k,m).'*(x(j)-x(i))./((rij(i,j)*rij(i,k)^2)) ...
                - (dl_cos_ijk(i,j,k,m).'/rij(i,k))*dl_rij(i,k,l) + (cos_ijk(i,j,k)/rij(i,k)^2)*dl_rij(i,k,m).'*dl_rij(i,k,l)...
                - (cos_ijk(i,j,k)/rij(i,k))*dmdl_rij(i,k,l,m);
    elseif m==i
        Y = (-eye(3))./((rij(i,j)*rij(i,k))) - dl_rij(i,j,m).'*(x(j)-x(i))./((rij(i,j)^2*rij(i,k))) - dl_rij(i,k,m).'*(x(j)-x(i))./((rij(i,j)*rij(i,k)^2))...
            - (dl_cos_ijk(i,j,k,m).'/rij(i,k))*dl_rij(i,k,l) + (cos_ijk(i,j,k)/rij(i,k)^2)*dl_rij(i,k,m).'*dl_rij(i,k,l) - (cos_ijk(i,j,k)/rij(i,k))*dmdl_rij(i,k,l,m);
    elseif m==j
            Y = (eye(3))./((rij(i,j)*rij(i,k))) -  dl_rij(i,j,m).'*(x(j)-x(i))./((rij(i,j)^2*rij(i,k)))...
                - (dl_cos_ijk(i,j,k,m).'/rij(i,k))*dl_rij(i,k,l);
    else
        Y = 0;
    end
else
    Y = 0;
end

end

