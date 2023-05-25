% Tạo vectơ tần số từ 0.01 rad/s đến 5 rad/s
w = 0.01:0.01:5;

% Hàm truyền của bộ tích phân: H(jw) = 1/jw
H_integral = 1./(1i*w);

% Hàm truyền của phần tử trễ thời gian bậc 1: H(jw) = 1/(1 + iw)
H_delay = 1./(1 + 1i*w);

% Vẽ biên độ và pha của hàm truyền bộ tích phân và phần tử trễ thời gian bậc 1 trên cùng một hình
figure;
subplot(2,1,1); % Vẽ biên độ
semilogx(w, abs(H_integral), 'b', w, abs(H_delay), 'r');
title('Biên độ của hàm truyền');
xlabel('Tần số (rad/s)');
ylabel('Biên độ');
legend('H(jw) = 1/jw', 'H(jw) = 1/(1 + iw)');
grid on;

subplot(2,1,2); % Vẽ pha
semilogx(w, angle(H_integral)*180/pi, 'b', w, angle(H_delay)*180/pi, 'r');
title('Pha của hàm truyền');
xlabel('Tần số (rad/s)');
ylabel('Pha (độ)');
legend('H(jw) = 1/jw', 'H(jw) = 1/(1 + iw)');
grid on;
