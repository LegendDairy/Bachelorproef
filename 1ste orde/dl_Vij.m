function Y = dl_Vij( i,j,l)
%Afgeleide van Vij naar de positie van atoom l.
global a;
a = 1.4388;

l1 = 3.4879;
l2 = 2.2119;

if(i==j)
    Y = 0;
else

    Y = fc(i,j)*(-l1*dl_rij(i,j,l)*fr(i,j) +l2*dl_rij(i,j,l)*bij(i,j)*fa(i,j)- dl_bij(i,j,l)*fa(i,j))...
        + dl_fc(i,j,l)*(fr(i,j) - bij(i,j)*fa(i,j));
end
end




