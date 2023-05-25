function [f,Pf] = spectrocal(t,x)
% Vi du chuong trinh tinh toan spectrum
% t - time vector
% x - input samples
% f - frequency vector
% Pf - estimated PSD of x
% written by Nguyen Duc Nhan
Ns = length(x);
Ts = t(2)-t(1);
f = (-Ns/2:Ns/2-1)/(Ns*Ts); % freq. vector
Pf = fft(x,Ns);
Pf = fftshift(Pf)/Ns; 
Pf = abs(Pf).^2;