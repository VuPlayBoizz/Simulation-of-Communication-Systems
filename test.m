% Thông số tín hiệu
fm = 16*500;  % Tần số tín hiệu m(t) (Hz)

% Tạo vectơ thời gian
t = 0:1/fm:1;  % Vectơ thời gian từ 0 đến 1 giây với bước 0.001 giây

% Tín hiệu m(t)
mt = sin(30*pi*t) - 3*cos(10*pi*t);

% Tần số sóng mang và biên độ sóng mang
fc = 500;  % Tần số sóng mang (Hz)
Ac = 1;  % Biên độ sóng mang

% Sóng mang
ct = Ac * cos(2*pi*fc*t);

% Tín hiệu điều chế biên độ
s = (1 + mt) .* ct;

% Vẽ biểu đồ
figure;
subplot(3, 1, 1);
plot(t, mt);
title('Tín hiệu m(t)');
xlabel('Thời gian');
ylabel('Amplitude');

subplot(3, 1, 2);
plot(t, ct);
title('Sóng mang c(t)');
xlabel('Thời gian');
ylabel('Amplitude');

subplot(3, 1, 3);
plot(t, s);
title('Tín hiệu điều chế biên độ s(t)');
xlabel('Thời gian');
ylabel('Amplitude');
