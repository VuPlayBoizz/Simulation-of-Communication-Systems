%4-ASK
% Signal generator
dm = randi([0 3], 1 , 8);
% PAM modulation
s = pammod(dm,4);
% PAM demodulation
r = pamdemod(s,4);

% Vẽ đồ thị điều chế
subplot(2, 1, 1);
plot(1:length(s), s);
xlabel('Mẫu');
ylabel('Tín hiệu điều chế');

% Vẽ đồ thị giải điều chế
subplot(2, 1, 2);
plot(1:length(r), r);
xlabel('Mẫu');
ylabel('Tín hiệu giải điều chế');

