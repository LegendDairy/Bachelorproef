function Y = dl_phi(l)
%Eerste afgeleide naar de positie van atoom l van de potentiele energie van het kristal
% l = [h k l m]

if l(3) == 0
    %Sommatie over de naaste buren van atoom l
    h = l;
    h(3) = 1;
        %Sommatie over de naaste buren van atoom h
        k = h;
        k(3) = 0;
        Y = dl_Vij(h,k, l);
        k = k + [1,0,0];
        Y = Y + dl_Vij(h,k, l);
        k = k - [0,1,0];
        Y = Y + dl_Vij(h,k, l);

    h = h - [1,0,0];
        k = h;
        k(3) = 0;
        Y = Y + dl_Vij(h,k, l);
        k = k + [1,0,0];
        Y = Y + dl_Vij(h,k, l);
        k = k - [0,1,0];
        Y = Y + dl_Vij(h,k, l);
        
    h = h + [0,1,0];
        k = h;
        k(3) = 0;
        Y = Y + dl_Vij(h,k, l);
        k = k + [1,0,0];
        Y = Y + dl_Vij(h,k, l);
        k = k - [0,1,0];
        Y = Y + dl_Vij(h,k, l);
    
  
else
    %Sommatie over de naaste buren van atoom l
    h = l;
    h(3) = 0;
        k = h;
        k(3) = 1;
        Y = dl_Vij(h,k, l);
        k = k - [1,0,0];
        Y = Y + dl_Vij(h,k, l);
        k = k + [0,1,0];
        Y = Y + dl_Vij(h,k, l);

        
        
    h = h + [1,0,0];
        k = h;
        k(3) = 1;
        Y = Y + dl_Vij(h,k, l);
        k = k - [1,0,0];
        Y = Y + dl_Vij(h,k, l);
        k = k + [0,1,0];
        Y = Y + dl_Vij(h,k, l);
        
    h = h - [0,1,0];
        k = h;
        k(3) = 1;
        Y = Y + dl_Vij(h,k, l);
        k = k - [1,0,0];
        Y = Y + dl_Vij(h,k, l);
        k = k + [0,1,0];
        Y = Y + dl_Vij(h,k, l);
    
end

end

