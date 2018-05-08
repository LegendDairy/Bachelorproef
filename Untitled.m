%Grafiek van Potentiele energie per atoom gecentered rond het
%evenwichtspunt
a0 = [1.4:0.001:1.4776];
V = a0;

for i = 1:78
    V(i) = (3/2)*V_a(a0(i));
end
figure('Name','Potentiële energie rond evenwichtspunt','NumberTitle','off');
plot(a0-1.4388, V);
set(gca,'fontsize',15);
axis([-0.005 0.005 -7.98 -7.97]);
xlabel('a-a0 [Å]');
ylabel('\Phi [eV/atoom]');

%Grafiek van Potentiele energie per atoom
a0 = [0:0.001:3];
V = a0;
for i = 1:3001
    V(i) =  (3/2)*V_a(a0(i));
end
figure('Name','Potentiële energie','NumberTitle','off');
plot(a0, V);
axis([0 3 -8.2 8]);
set(gca,'fontsize',15);
xlabel('a_c_c [Å]');
ylabel('\Phi [eV/atoom]');
