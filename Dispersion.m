global a;
a = 1.4388;
M = [0:0.01:1].'*[2*pi/(3*a) 0 0];
K0 =  [1:-0.01:0].'*[2*pi/(3*(1.4388)),2*pi/(3*sqrt(3)*(1.4388)),0];
MK = [1:-0.01:0].'*[2*pi/(3*a) 0 0] + [0:0.01:1].'*[2*pi/(3*(1.4388)),2*pi/(3*sqrt(3)*(1.4388)),0];
D_MK = zeros(101, 6, 6);
D_0M = zeros(101, 6, 6);
D_K0 = zeros(101, 6, 6);

parfor j=1:101
    D_MK(j,:,:) = [D_k(squeeze(MK(j,:)), 0, 0) D_k(squeeze(MK(j,:)), 1, 0) ; D_k(squeeze(MK(j,:)), 0, 1) D_k(squeeze(MK(j,:)), 1, 1)];
    D_0M(j,:,:) = [D_k(squeeze(M(j,:)), 0, 0) D_k(squeeze(M(j,:)), 1, 0) ; D_k(squeeze(M(j,:)), 0, 1) D_k(squeeze(M(j,:)), 1, 1)];
    D_K0(j,:,:) = [D_k(squeeze(K0(j,:)), 0, 0) D_k(squeeze(K0(j,:)), 1, 0) ; D_k(squeeze(K0(j,:)), 0, 1) D_k(squeeze(K0(j,:)), 1, 1)];
end
 
w = zeros(101, 6, 3);
for j=1:101
w(j,:,1) = sqrt(eig(squeeze(D_0M(j,:,:))));
end
for j=1:101
w(j,:,2) = sqrt(eig(squeeze(D_K0(j,:,:))));
end
for j=1:101
w(j,:,3) = sqrt(eig(squeeze(D_MK(j,:,:))));
end

hold on;
plot([0:0.01:1].'*2*pi/(3*a), real(squeeze(w(:,1,1))), 'b.');
plot([0:0.01:1].'*2*pi/(3*a), real(squeeze(w(:,2,1))), 'b.');
plot([0:0.01:1].'*2*pi/(3*a), real(squeeze(w(:,3,1))), 'b.');
plot([0:0.01:1].'*2*pi/(3*a), real(squeeze(w(:,4,1))), 'b.');  
plot([0:0.01:1].'*2*pi/(3*a), real(squeeze(w(:,5,1))), 'b.');
plot([0:0.01:1].'*2*pi/(3*a), real(squeeze(w(:,6,1))), 'b.');
set(gca, 'XTick',[0 1], 'xticklabel', {'M', 'K'});
xlabel('k');
ylabel('? [THz]');
hold off;