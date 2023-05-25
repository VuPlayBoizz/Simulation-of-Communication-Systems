% Bai 9
t=0:0.1:10;
s=sin(2*pi*5*t).*cos(2*pi*3*t)+exp(-0.1*t);
plot(t,s)
% Bai 10
t=0:0.1:10;
s=sin(2*pi*5*3*t).*sin(2*pi*5*3*t);
plot(t,s)
% Bai 11
t=0:0.1:10;
s=20.*sin(2*pi*5*t);
plot(t,s)
% Bai 12
b=[1024 1000 100 2 1];
result=log2(b)
result1=log(b)