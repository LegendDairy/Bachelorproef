a0 = [1.4:0.001:1.4776];

V = a0;

for i = 1:78
    V(i) = cohesive(a0(i));
end

plot(a0-1.4388, V)