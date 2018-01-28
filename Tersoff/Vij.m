function Y = Vij( i, j, a0 )

global a;
a = a0;

Y = fc(i,j)*(fr(i,j) - bij(i,j)*fa(i,j));

end