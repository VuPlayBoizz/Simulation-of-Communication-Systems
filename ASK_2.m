% Data sequence
h = [0 1 0 1];
% NRZ modulation
[t,y,code]=nrzcode(h,1e6,512);
% AM demodulation
ts = t(2)-t(1); % sampling time
fs = 1/ts; % sampling freq.
fc = 10e6; % carrier freq.
yd = ammod(y,fc,fs);
plot(t,yd)
