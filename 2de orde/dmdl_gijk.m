function  Y  = dmdl_gijk( i,j,k,l,m )
 
 c = 3.8049*10^4;
 d = 4.3484;
 h = -0.930;

Y = ((8*(c^2)*(h-cos_ijk(i,j,k))^2)/(d^2+(h-cos_ijk(i,j,k))^2)^3)*dl_cos_ijk(i,j,k,m).'*dl_cos_ijk(i,j,k,l) ...
    + ((2*(c^2))/(d^2+(h-cos_ijk(i,j,k))^2)^2)*dl_cos_ijk(i,j,k,m).'*dl_cos_ijk(i,j,k,l) ...
    - ((2*(c^2)*(h-cos_ijk(i,j,k)))/(d^2+(h-cos_ijk(i,j,k))^2)^2)*dmdl_cos_ijk(i,j,k,l,m);

end

