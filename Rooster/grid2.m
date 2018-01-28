global a;
a = 1.4388;

hold on;
X(2) = 0;
for h = -1:1
    for k = -1:1
        for m = 0:1
            X = x([h,k, m]);
                if m == 1
                    scatter(X(1), X(2),300, 'filled','r');
                else
                    scatter(X(1), X(2), 300, 'filled','b');
                end
                text(X(1)-0.25, X(2)-0.30, sprintf('(%i, %i, %i)', h, k, m), 'fontsize',18);
        end
    end
end
axis([-6 6 -6 6])
axis equal;
hold off;
