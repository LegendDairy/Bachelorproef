function X = x(n)
global a;
%Calculate position of m-th atom in n-th cell
%n is a vector containing (hkl) position of the required cell and m (0 or 1) the
%basis number
%
%Usage: a=1; x([h;k;m])
a1 = (3*a/2)*[1, 1/sqrt(3), 0];
a2 = (3*a/2)*[1, -1/sqrt(3), 0];

if n(3)==1
    X = a1*n(1)+a2*n(2)+(a/2)*[1, sqrt(3), 0];
else
    X = a1*n(1)+a2*n(2);
end
end

