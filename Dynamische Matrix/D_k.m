function Y = D_k( k, m, n )
global a;
a = 1.4388;

Y = 0;

 if m == n
    Y = Y + dmdl_phi([0 0 m], [-1 0 n])* exp(1i*k*(x([-1 0 0])).');
    Y = Y + dmdl_phi([0 0 m], [-1 1 n])* exp(1i*k*(x([-1 1 0])).');
    Y = Y + dmdl_phi([0 0 m], [0 -1 n])* exp(1i*k*(x([0 -1 0])).');
    Y = Y + dmdl_phi([0 0 m], [0 0 n])* exp(1i*k*(x([0 0 0])).');
    Y = Y + dmdl_phi([0 0 m], [0 1 n])* exp(1i*k*(x([0 1 0])).');
    Y = Y + dmdl_phi([0 0 m], [1 -1 n])* exp(1i*k*(x([1 -1 0])).');
    Y = Y + dmdl_phi([0 0 m], [1 0 n])* exp(1i*k*(x([1 0 0])).');
 elseif m == 0
    Y = Y + dmdl_phi([0 0 m], [-1 0 n])* exp(1i*k*(x([-1 0 0])).');
    Y = Y + dmdl_phi([0 0 m], [-1 1 n])* exp(1i*k*(x([-1 1 0])).');
    Y = Y + dmdl_phi([0 0 m], [0 0 n])* exp(1i*k*(x([0 0 0])).'); 
 elseif m == 1
    Y = Y + dmdl_phi([0 0 m], [0 0 n])* exp(1i*k*(x([0 0 0])).');
    Y = Y + dmdl_phi([0 0 m], [1 -1 n])* exp(1i*k*(x([1 -1 0])).');
    Y = Y + dmdl_phi([0 0 m], [1 0 n])* exp(1i*k*(x([1 0 0])).');
 else
 end

% for h = -1:1
% for l = -1:1
%     Y = Y + dmdl_phi([0 0 m], [h l n])* exp(1i*k*(x([h l 0])).');
% end
% end

 Y = Y/(12.0107); %delen door massa
 Y = Y*9647.756; %omzetten naar THz
end

