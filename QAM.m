% Create a random digital message
M = 16; % Alphabet size
x = randi([0 M-1], 1, 1000);

% 16-QAM modulation
y = qammod(x, M);

% Transmit signal through an AWGN channel.
SNR_dB = 15; % Signal-to-Noise Ratio in dB
ynoisy = awgn(y, SNR_dB, 'measured');

% Create scatter plot from noisy data.
h = scatterplot(ynoisy, 1, 0, 'xb');
hold on;
scatterplot(y, 1, 0, 'or', h);
hold off;

% Extract amplitude and phase information
amplitude = abs(ynoisy);
phase = angle(ynoisy);

% Plot amplitude and phase
figure;
subplot(2,1,1);
plot(amplitude);
title('Amplitude');
xlabel('Sample');
ylabel('Amplitude');

subplot(2,1,2);
plot(phase);
title('Phase');
xlabel('Sample');
ylabel('Phase');
