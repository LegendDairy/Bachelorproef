function U = cohesive(a0)

X(2) = 0;
U = 0;
for h = 0:0
    for k = 0:0
        for m = 0:1
                if m == 1
                    U = U + Vij([h,k, m], [h,k, 0], a0);
                    %U = U + Vij([h,k, m], [h+1,k, 0], a0);
                    %U = U + Vij([h,k, m], [h+1,k-1, 0], a0);
                else
                    U = U + Vij([h,k, m], [h,k, 1], a0);
                    %U = U + Vij([h,k, m], [h-1,k, 1], a0);
                    %U = U + Vij([h,k, m], [h-1,k+1, 1], a0);
                end
        end
    end
end
U = U/2;

end

