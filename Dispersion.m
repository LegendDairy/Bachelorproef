global a;
a = 1.4388;

h = 0.001;   %stapgrootte, geeft k<0.002/Angstrom
N = 1/h +1;  %Number of steps

M = [0:h:1].'*[2*pi/(3*a) 0 0];
K0 =  [1:-h:0].'*[2*pi/(3*a),2*pi/(3*sqrt(3)*(a)),0];
MK = [1:-h:0].'*[2*pi/(3*a) 0 0] + [0:h:1].'*[2*pi/(3*(1.4388)),2*pi/(3*sqrt(3)*(1.4388)),0];

D_MK = zeros(N, 6, 6);
D_0M = zeros(N, 6, 6);
D_K0 = zeros(N, 6, 6);

parfor j=1:N
    D_MK(j,:,:) = [D_k(squeeze(MK(j,:)), 0, 0) D_k(squeeze(MK(j,:)), 1, 0) ; D_k(squeeze(MK(j,:)), 0, 1) D_k(squeeze(MK(j,:)), 1, 1)];
    D_0M(j,:,:) = [D_k(squeeze(M(j,:)), 0, 0) D_k(squeeze(M(j,:)), 1, 0) ; D_k(squeeze(M(j,:)), 0, 1) D_k(squeeze(M(j,:)), 1, 1)];
    D_K0(j,:,:) = [D_k(squeeze(K0(j,:)), 0, 0) D_k(squeeze(K0(j,:)), 1, 0) ; D_k(squeeze(K0(j,:)), 0, 1) D_k(squeeze(K0(j,:)), 1, 1)];
end
 
w = zeros(N, 6, 3);
for j=1:N
w(j,:,1) = sqrt(eig(squeeze(D_0M(j,:,:))));
end
for j=1:N
w(j,:,2) = sqrt(eig(squeeze(D_MK(j,:,:))));
end
for j=1:N
w(j,:,3) = sqrt(eig(squeeze(D_K0(j,:,:))));
end

figure
hold on;
plot([0:h:1].'*2*pi/(3*a), real(squeeze(w(:,1,1))), 'b.');
plot([0:h:1].'*2*pi/(3*a), real(squeeze(w(:,2,1))), 'b.');
plot([0:h:1].'*2*pi/(3*a), real(squeeze(w(:,3,1))), 'b.');
plot([0:h:1].'*2*pi/(3*a), real(squeeze(w(:,4,1))), 'b.');  
plot([0:h:1].'*2*pi/(3*a), real(squeeze(w(:,5,1))), 'b.');
plot([0:h:1].'*2*pi/(3*a), real(squeeze(w(:,6,1))), 'b.');

plot([1:h:2].'*2*pi/(3*a), real(squeeze(w(:,1,2))), 'b.');
plot([1:h:2].'*2*pi/(3*a), real(squeeze(w(:,2,2))), 'b.');
plot([1:h:2].'*2*pi/(3*a), real(squeeze(w(:,3,2))), 'b.');
plot([1:h:2].'*2*pi/(3*a), real(squeeze(w(:,4,2))), 'b.');  
plot([1:h:2].'*2*pi/(3*a), real(squeeze(w(:,5,2))), 'b.');
plot([1:h:2].'*2*pi/(3*a), real(squeeze(w(:,6,2))), 'b.');

plot([2:h:3].'*2*pi/(3*a), real(squeeze(w(:,1,3))), 'b.');
plot([2:h:3].'*2*pi/(3*a), real(squeeze(w(:,2,3))), 'b.');
plot([2:h:3].'*2*pi/(3*a), real(squeeze(w(:,3,3))), 'b.');
plot([2:h:3].'*2*pi/(3*a), real(squeeze(w(:,4,3))), 'b.');  
plot([2:h:3].'*2*pi/(3*a), real(squeeze(w(:,5,3))), 'b.');
plot([2:h:3].'*2*pi/(3*a), real(squeeze(w(:,6,3))), 'b.');

line([0 0], [0 400]);
line([2*pi/(3*a) 2*pi/(3*a)], [0 400]);
line([2*2*pi/(3*a) 2*2*pi/(3*a)], [0 400]);
line([3*2*pi/(3*a) 3*2*pi/(3*a)], [0 400]);

set(gca, 'fontsize',15, 'XTick',[0 2*pi/(3*a), 2*2*pi/(3*a), 3*2*pi/(3*a)], 'xticklabel', {'\Gamma', 'M', 'K', '\Gamma'});
axis([0 3*2*pi/(3*a) 0 400]);
xlabel('k');
ylabel('\omega [THz]');
hold off;