function Y = dmdl_cij( i,j,l,m )
l3 = 0.0000;
Y = 0;


if i(3) == 0
    %Sum over all the non cut-off terms
    k = i;
    k(3) = 1;
    if(k==j)
    else
            Y = Y + fc(i,k)*dmdl_gijk(i,j,k,l,m);
            Y = Y + dl_fc(i,k,m).'*dl_gijk(i,j,k,l);
            
            Y = Y + dmdl_fc(i,k,l,m)*gijk(i,j,k);
            Y = Y + dl_gijk(i,j,k,m).'*dl_fc(i,k,l);

    end
    k = k - [1,0,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dmdl_gijk(i,j,k,l,m);
            Y = Y + dl_fc(i,k,m).'*dl_gijk(i,j,k,l);
            
            Y = Y + dmdl_fc(i,k,l,m)*gijk(i,j,k);
            Y = Y + dl_gijk(i,j,k,m).'*dl_fc(i,k,l);
    end
    k = k + [0,1,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dmdl_gijk(i,j,k,l,m);
            Y = Y + dl_fc(i,k,m).'*dl_gijk(i,j,k,l);
            
            Y = Y + dmdl_fc(i,k,l,m)*gijk(i,j,k);
            Y = Y + dl_gijk(i,j,k,m).'*dl_fc(i,k,l);
    end
else
    %Sum over all the non cut-off terms
    k = i;
    k(3) = 0;
    if(k==j)
    else
            Y = Y + fc(i,k)*dmdl_gijk(i,j,k,l,m);
            Y = Y + dl_fc(i,k,m).'*dl_gijk(i,j,k,l);
            
            Y = Y + dmdl_fc(i,k,l,m)*gijk(i,j,k);
            Y = Y + dl_gijk(i,j,k,m).'*dl_fc(i,k,l);
    end
    k = k + [1,0,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dmdl_gijk(i,j,k,l,m);
            Y = Y + dl_fc(i,k,m).'*dl_gijk(i,j,k,l);
            
            Y = Y + dmdl_fc(i,k,l,m)*gijk(i,j,k);
            Y = Y + dl_gijk(i,j,k,m).'*dl_fc(i,k,l);
    end
    k = k - [0,1,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dmdl_gijk(i,j,k,l,m);
            Y = Y + dl_fc(i,k,m).'*dl_gijk(i,j,k,l);
            
            Y = Y + dmdl_fc(i,k,l,m)*gijk(i,j,k);
            Y = Y + dl_gijk(i,j,k,m).'*dl_fc(i,k,l);
    end
end

 
end

