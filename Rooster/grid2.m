global a;
a = 1.4388;
figure;
hold on;
X(2) = 0;
                h0 = 0;
                k0 = 0;
                m0 = 0;
                
for h = 0:5
    for k = 0:5
        for m = 0:1
            X = x([h,k, m]);
                if m == 1
                    scatter(X(1), X(2),300, 'filled','r');
                else
                    scatter(X(1), X(2), 300, 'filled','b');
                end
                text(X(1)-0.25, X(2)-0.30, sprintf('(%i, %i, %i)', h, k, m), 'fontsize',18);
                h0 = h;
                k0 = k;
                m0 = m;

                
        end
    end
end
axis([-20 20 -20 20])
axis equal;
hold off;
