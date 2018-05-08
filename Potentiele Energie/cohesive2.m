function U = cohesive(a0)

U = 0;
c = 0;
figure
hold on
for h1 = 1:3
    for h2 = 1:3
        for k1 = 1:3
            for k2 = 1:3
                for m1 = 0:1
                    for m2 = 0:1
                        if h1==h2 && k1==k2 && m1==m2
                        else
                        temp = Vij([h1, k1, m1], [h2, k2, m2], a0);
                        if(temp == 0)
                        else
                            c = c + 1;
                            X = x([h1,k1, m1]);
                            X2 = x([h2,k2, m2]);
                            tmp = plot([X(1) X2(1)], [X(2) X2(2)], 'k');
                            set(tmp, 'LineWidth', 4);
                            if(m1==0)
                                color = 'r';
                            else
                                color = 'b';
                            end
                            tmp = scatter(X(1), X(2), 'filled',color);
                            set(tmp, 'SizeData', 600);
                            if(m2==0)
                                color = 'r';
                            else
                                color = 'b';
                            end
                            tmp = scatter(X2(1), X2(2), 'filled',color);
                            set(tmp, 'SizeData', 600);
                            text(X(1)-0.50, X(2)-0.50, sprintf('(%i, %i, %i)', h1, k1, m1), 'fontsize',18);

                            U = U + temp;
                            
                        end
                            
                        end
                    end
                end
            end
        end
    end
end
U = U/2;
display(c)
axis equal;
hold off;


end