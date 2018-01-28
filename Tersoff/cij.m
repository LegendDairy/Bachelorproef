function Y = cij( i, j )
l3 = 0.0000;
%CIJ Summary of this function goes here
%   Detailed explanation goes here
if i(3) == 0
    %Sum over all the non cut-off terms
    k = i;
    k(3) = 1;
    if(k==j)
        Y = 0;
    else
            Y = fc(i,k)*gijk(i,j,k);
    end
    k = k - [1,0,0];
    if(k==j)
    else
    Y = Y + fc(i,k)*gijk(i,j,k);
    end
    k = k + [0,1,0];
    if(k==j)
    else
    Y = Y + fc(i,k)*gijk(i,j,k);
    end
else
    %Sum over all the non cut-off terms
    k = i;
    k(3) = 0;
    if(k==j)
        Y = 0;
    else
            Y = fc(i,k)*gijk(i,j,k);
    end
    k = k + [1,0,0];
    if(k==j)
    else
    Y = Y + fc(i,k)*gijk(i,j,k);
    end
    k = k - [0,1,0];
    if(k==j)
    else
    Y = Y + fc(i,k)*gijk(i,j,k);
    end
end

end

