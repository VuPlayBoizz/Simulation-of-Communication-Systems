function [t,y] = Xung_Vuong(Tw,Rp,Ns,Np)
% Chuong trinh vi du tao chuoi xung vuong
% Tw - the pulsewidth
% Rp - the repetition rate of pulse Tp < 1/Rp
% Ns - the number of samples
% Np - the number of pulses (the length of pulse train)
% t - the time vector output
% y - the vector output of the pulse samples
% written by Nguyen Duc Nhan
Tp = 1/Rp; % pulse period
Timewindow = Np*Tp; % time window
ts = Timewindow/(Ns-1); % sampling time
t = 0:ts:Timewindow; % time vector
Nsp = round(Tp/ts); % number of samples within Tp
y = zeros(size(t));
for k = 1:Ns
if mod(t(k),Nsp*ts) <= Tw
y(k) = 1;
else
y(k) = 0;
end
end