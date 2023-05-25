% Chuong trinh vi du ve MSK
close all;
% Parameters
Ns = 8; % number of samples per symbol
x = randi([0 1], 1, 1000); % Random signal
% Use MSK modulation to produce y.
y = mskmod(x,Ns,[],pi/2);
h = scatterplot(y,1,0,'xb');
hold on;
scatterplot(y,Ns,0,'or',h); hold off;
% Transmit signal through an AWGN channel.
yn = awgn(y,25,'measured');
% Plot eyediagram
eyediagram(yn,16);