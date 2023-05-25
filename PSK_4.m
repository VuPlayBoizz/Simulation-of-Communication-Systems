% Create a random digital message
M = 4; % Alphabet size
x = randi([0 M-1], 1, 1000); % Message generator

% Use 4-PSK modulation to produce y.
y = pskmod(x, M, pi/4);

% Add AWGN to the signal
SNR_dB = 15; % Signal-to-Noise Ratio in dB
y_noisy = awgn(y, SNR_dB, 'measured');

% Plot the constellation diagram
h = scatterplot(y_noisy, 1, 0, 'xb');
hold on;
scatterplot(y, 1, 0, 'or', h);
title('Constellation Diagram of 4-PSK Signal');
