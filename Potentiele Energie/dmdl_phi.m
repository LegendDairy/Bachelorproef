function Y = dmdl_phi( l,m )
%Tweede afgeleide naar de positie van atoom l en atoom m van de potentiele energie van het kristal
% l = [h k l m], m = [h' k' l' m']
Y = 0;

% for h1 = -1:1
%     for k1 = -1:1
%         for m1=0:1
%             for h2 = -1:1
%                 for k2 = -1:1
%                     for m2=0:1
%                         if(dmdl_Vij([h1 k1 m1] ,[h2 k2 m2], l, m) == 0)
%                         else
%                         vec1 = [h1 k1 m1];
%                         vec2 = [h2 k2 m2]
%                         Y = Y + dmdl_Vij([h1 k1 m1] ,[h2 k2 m2], l, m);
%                         vec1 = [h1 k1 m1];
%                         vec2 = [h2 k2 m2]
%                         test = 0;
%                         end
%                     end
%                 end
%             end
%         end
%     end
% end
% Y = 0.5*Y;

if l(3) == 0
    %Sommatie over de naaste buren van atoom l
    h = l;
    k = l;

%         k(3) = 1;
%         Y = Y + dmdl_Vij(h,k, l, m); %[0 0 0 [001]
%         k = k - [1,0,0];
%         Y = Y + dmdl_Vij(h,k, l, m); %[000] [-101]
%         k = k + [0,1,0];
%         Y = Y + dmdl_Vij(h,k, l, m); %[000] [-111]
    h = l;
    h(3) = 1;
        %Sommatie over de naaste buren van atoom h
        k = h;
        k(3) = 0;
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); %[001] [000]
        k = k + [1,0,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); %[001] [100]
        k = k - [0,1,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); %[001] [1-10]

    h = h - [1,0,0];
        k = h;
        k(3) = 0;
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); %[-101] [-100]
        k = k + [1,0,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); % [0 0 0] - [-1 0 1]
        k = k - [0,1,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); % [-1 0 1] - [0 -1 0]
        
    h = h + [0,1,0];
        k = h;
        k(3) = 0;
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); %[ -1 1 1] [-1 1 0]
        k = k + [1,0,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); %[-1 1 1] [0 1 0]
        k = k - [0,1,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m); %[-1 1 1] [0 0 0]
    
  
else
    %Sommatie over de naaste buren van atoom l

    h = l;
    k = l;

%         k(3) = 0;
%         Y = Y + dmdl_Vij(h,k, l, m) ; %[001][000]
%         k = k + [1,0,0];
%         Y = Y + dmdl_Vij(h,k, l, m);%001 100
%         k = k - [0,1,0];
%         Y = Y + dmdl_Vij(h,k, l, m);%001 1-10

    h = l;
    h(3) = 0;
        k = h;
        k(3) = 1;
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%000 001
        k = k - [1,0,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%000 -1 0 1
        k = k + [0,1,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%000 -111

        
        
    h = h + [1,0,0];
        k = h;
        k(3) = 1;
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%100 101
        k = k - [1,0,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%100 001
        k = k + [0,1,0];
       Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%100 011 
        
    h = h - [0,1,0];
        k = h;
        k(3) = 1;
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%1-10 1-11
        k = k - [1,0,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%1-10 0-11
        k = k + [0,1,0];
        Y = Y + dmdl_Vij(h,k, l, m) + dmdl_Vij(k,h, l, m);%1-10 001
end
     Y = 0.5*Y;

end

