%Berekent de cohesie energie door een kristal te beschouwen met i bij i
%roosterpunten, dus een kristal met 2*i^2 aantal atomen
%a0 is de beschouwde koolstof-koolstof afstand van het rooster
%Het aantal naaste buren interactie van zo'n atoom gaat als
%(3(n-1)n+2)/(2n^2)
%Aangezien de waarde Vij van de tersoff potentiaal van alle interacties van
%naasten buren gelijk is aan 5.3185 en die van niet naaste buren nul is
%convergeert dit naar 7.98ev/atoom voor i gaande naar oneindig

function U = cohesive(a0, i)

U = 0;
for h = 1:i
    for h2 = 1:i
        for k = 1:i
                for k2 = 1:i
                    for m = 0:1
                        for m2 = 0:1
                            if h==h2 && k==k2 && m==m2
                            else
                                U = U + Vij([h,k, m], [h2,k2, m2], a0);
                            end
          
                        end
                    end
                end
        end
    end
end


U = U/2;
U = U/(2*i^2);

end

