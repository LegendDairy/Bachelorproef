y = zeros(1000);
x = 1:0.001:1.9999;
for k = 1:1000
    y(k) = Vij([0 0 0], [0 0 1], x(k));
end

plot(x, y);