% Tạo vectơ tần số từ 0.01 rad/s đến 5 rad/s
w = 0.01:0.01:5;

% Hàm truyền của bộ tích phân: H(jw) = 1/jw
H_integral = 1./(1i*w);

% Hàm truyền của phần tử trễ thời gian bậc 1: H(jw) = 1/(1 + iw)
H_delay = 1./(1 + 1i*w);

% Vẽ đồ thị biên độ bằng cách sử dụng plot
figure;
plot(w, abs(H_integral));
hold on;
plot(w, abs(H_delay));
title('Đồ thị biên độ sử dụng plot');
xlabel('Tần số (rad/s)');
ylabel('Biên độ');
legend('Bộ tích phân', 'Phần tử trễ thời gian bậc 1');
grid on;

% Vẽ đồ thị biên độ bằng cách sử dụng semilogx
figure;
semilogx(w, abs(H_integral));
hold on;
semilogx(w, abs(H_delay));
title('Đồ thị biên độ sử dụng semilogx');
xlabel('Tần số (rad/s)');
ylabel('Biên độ');
legend('Bộ tích phân', 'Phần tử trễ thời gian bậc 1');
grid on;

% Vẽ đồ thị biên độ bằng cách sử dụng semilogy
figure;
semilogy(w, abs(H_integral));
hold on;
semilogy(w, abs(H_delay));
title('Đồ thị biên độ sử dụng semilogy');
xlabel('Tần số (rad/s)');
ylabel('Biên độ');
legend('Bộ tích phân', 'Phần tử trễ thời gian bậc 1');
grid on;

% Vẽ đồ thị biên độ bằng cách sử dụng loglog
figure;
loglog(w, abs(H_integral));
hold on;
loglog(w, abs(H_delay));
title('Đồ thị biên độ sử dụng loglog');
xlabel('Tần số (rad/s)');
ylabel('Biên độ');
legend('Bộ tích phân', 'Phần tử trễ thời gian bậc 1');
grid on;
