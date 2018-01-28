function Y = dmdl_Vij( i, j, l, m )
%Tweede orde afgeleide naar de posities van atomen l en m van de Tersoff potentiaal tussen i en j
%Nog niet nagekeken, buiten dmdl_cos_ijk en dmdl_rij
l1 = 3.4879;
l2 = 2.2119;

if(i==j)
    Y = 0;
elseif rij(i,j) > 1.80
    Y = 0;
else

Y = fc(i,j)*(-l1*dmdl_rij(i,j,l,m)*fr(i,j) + (-l1*dl_rij(i,j,m)).'*(-l1*dl_rij(i,j,l))*fr(i,j) ...
    + (l2*dmdl_rij(i,j,l,m))*bij(i,j)*fa(i,j) - (l2*dl_rij(i,j,m)).'*(l2*dl_rij(i,j,l))*bij(i,j)*fa(i,j) ...
    + (dl_bij(i,j, m)).'*(l2*dl_rij(i,j,l))*fa(i,j) + (l2*dl_rij(i,j,m)).'*dl_bij(i,j,l)*fa(i,j) ...
    - dmdl_bij(i,j,l,m)*fa(i,j))...
    + dl_fc(i,j,m).'*((-l1*dl_rij(i,j,l)*fr(i,j) +l2*dl_rij(i,j,l)*bij(i,j)*fa(i,j)- dl_bij(i,j,l)*fa(i,j)))...
        + dmdl_fc(i,j,l,m)*(fr(i,j) - bij(i,j)*fa(i,j))...
        + ((-l1*dl_rij(i,j,m)*fr(i,j) +l2*dl_rij(i,j,m)*bij(i,j)*fa(i,j)- dl_bij(i,j,m)*fa(i,j))).'*(dl_fc(i,j,l));
end
end

