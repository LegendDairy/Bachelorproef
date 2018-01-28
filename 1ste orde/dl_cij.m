function Y = dl_cij( i,j,l )
l3 = 0.0000;
Y = 0;

if i(3) == 0
    %Sum over all the non cut-off terms
    k = i;
    k(3) = 1;
    if(k==j)
    else
            Y = fc(i,k)*dl_gijk(i,j,k,l);
            Y = Y + dl_fc(i,k,l)*gijk(i,j,k);
    end
    k = k - [1,0,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dl_gijk(i,j,k,l);
            Y = Y + dl_fc(i,k,l)*gijk(i,j,k);    
    end
    k = k + [0,1,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dl_gijk(i,j,k,l);
            Y = Y + dl_fc(i,k,l)*gijk(i,j,k);
    end
else
    %Sum over all the non cut-off terms
    k = i;
    k(3) = 0;
    if(k==j)
    else
            Y = Y + fc(i,k)*dl_gijk(i,j,k,l);
            Y = Y + dl_fc(i,k,l)*gijk(i,j,k);
    end
    k = k + [1,0,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dl_gijk(i,j,k,l);
            Y = Y + dl_fc(i,k,l)*gijk(i,j,k);
    end
    k = k - [0,1,0];
    if(k==j)
    else
            Y = Y + fc(i,k)*dl_gijk(i,j,k,l);
            Y = Y + dl_fc(i,k,l)*gijk(i,j,k);
    end
end

end


