function y = butterwflt(x,n,B,Ts)
% Function bo loc butterworth
% B - filter bandwidth
% Ts - sampling time
% n - filter order
% y - filtered output
Ns = length(x);
% Frequency domain
f = [0:Ns/2-1 -Ns/2:-1]/(Ns*Ts);
Xf = fft(x);
Hf = 1./(1+(f./B).^(2*n)); % transfer func.
Yf = Xf.*Hf;
% Convert into time domain
y = ifft(Yf);