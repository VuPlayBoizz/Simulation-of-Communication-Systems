function y = raisedcosflt(x,Rb,Ts,beta)
% Function bo loc raised cosine
% x - input samples
% Rb - filter bandwidth
% Ts - sampling time
% beta - rolloff factor
% y - filtered output
Ns = length(x);
Tb = 1/Rb;
beta = beta*Rb;
% Frequency domain
f = [0:Ns/2-1 -Ns/2:-1]/(Ns*Ts);
Xf = fft(x);
Yf = zeros(size(Xf));
ind = (abs(f)<=(Rb/2-beta));
Yf(ind) = Xf(ind).*Tb;
ind = (abs(f)<=(Rb/2+beta)&abs(f)>(Rb/2-beta));
Yf(ind) = Xf(ind).*(Tb*cos(pi/(4*beta)*...
(abs(f(ind))-Rb/2+beta)).^2);
ind = (abs(f)>(Rb/2+beta));
Yf(ind) = Xf(ind).*0;
% Convert into time domain
y = ifft(Yf)./Tb;